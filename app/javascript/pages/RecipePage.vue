<template>
  <v-card>
    <v-row class="ma-0 pa-2">
      <v-col cols="12" sm="4" class="pa-0">
        <v-card-title style="font-weight:bold;">{{ recipeInfo.title }}</v-card-title>
        <v-img :src="recipeInfo.img_path" class="recipeInfo-img ml-2" height="250" />
      </v-col>
      <v-spacer></v-spacer>
      <v-col cols="12" sm="7">
        <v-card-text style="white-space: pre-wrap; font-size: 18px;">{{ recipeInfo.description }}</v-card-text>
        <table style="width: 70%; border-collapse: collapse; margin: 0 auto;" border="1" class="mt-4">
          <tr>
            <th></th>
            <th style="text-align:center;">材料</th>
            <th style="text-align:center; width: 30%;">分量</th>
          </tr>
          <tr v-for="ingredient in recipeInfo.ingredients">
            <td style="width: 10%;"><v-checkbox style="margin: 0 auto; padding-left: 10px;" @change="selectIngredient(ingredient.id)" input-value="true" /></td>
            <td style="text-align:center;">{{ ingredient.name }}</td>
            <td style="text-align:right; padding-right: 10px;">{{ ingredient.quantity }}</td>
          </tr>
        </table>
        <div style="float: right; margin-top: 30px;">
          <v-btn color="success" :href="orderLink" target="_blank" rel="noopener" @click="setHistory(recipeInfo)">食材を注文する</v-btn>
          <br>
          <span style="color: grey; font-size: 12px;">　　※外部サイトに飛びます</span>
        </div>
      </v-col>
    </v-row>
    <div class="pl-4 pb-10">
      <h3>レシピ</h3>
      <v-card-text style="white-space: pre-wrap; font-size: 20px;">{{recipeInfo.howto}}</v-card-text>
      <img src="/step-1.jpg" class="recipeInfo-img" style="height: 250px; max-width: 320px;" />
      <img src="/step-2.jpg" class="recipeInfo-img" style="height: 250px; max-width: 320px;" />
    </div>
  </v-card>
</template>

<script>
import axios from 'axios'
export default {
  name: 'RecipePage',
  data: function() {
    return {
      recipeInfo: '',
      orderLink: '',
    }
  },
  created: async function() {
    this.moveToTop()
    await this.fetchRecipeInfo()
    this.setDefaultOrderLink()
    console.log(JSON.parse(localStorage.getItem('recipeInfos')))
  },
  methods: {
    fetchRecipeInfo: async function() {
      const recipeId = this.$route.params.id
      const res = await axios.get("/api/v1/recipe",{ params: { id: recipeId } } )
      this.recipeInfo = res["data"]
      this.recipeInfo.ingredients.map(ingredient => {
        ingredient["selected"] = true
      })
    },
    selectIngredient: function(ingredientId) {
      const ingredient = this.recipeInfo.ingredients.find(ingredient => ingredient.id === ingredientId)
      ingredient.selected = !ingredient.selected
      this.changeOrderLink()
    },
    setDefaultOrderLink: function() {
      let ingredients = this.recipeInfo.ingredients
      let ingredient_ids = ingredients.map(ingredient => ingredient.amazon_id).join('|')
      this.orderLink = `https://www.amazon.co.jp/s?hidden-keywords=${ingredient_ids}`
    },
    changeOrderLink: function() {
      let ingredients = this.recipeInfo.ingredients.filter(ingredient=> ingredient.selected == true)
      let ingredient_ids = ingredients.map(ingredient => ingredient.amazon_id).join('|')
      this.orderLink = `https://www.amazon.co.jp/s?hidden-keywords=${ingredient_ids}`
    },
    setHistory: function(recipeInfo) {
      let recipeInfos = JSON.parse(localStorage.getItem('recipeInfos'))
      if (recipeInfos === null) {
        localStorage.setItem('recipeInfos', JSON.stringify([recipeInfo]))
      } else {
        let newRecipeInfo = recipeInfo
        recipeInfos.push(newRecipeInfo)
        localStorage.setItem('recipeInfos', JSON.stringify(recipeInfos))
      }
    },
    moveToTop: function() {
      const duration = 1
      const interval = 25
      const step = -window.scrollY / Math.ceil(duration / interval)
      const timer = setInterval(() => {
          window.scrollBy(0, step)
          if(window.scrollY <= 0) {
              clearInterval(timer)
          }
      }, interval);
    }
  }
}
</script>
