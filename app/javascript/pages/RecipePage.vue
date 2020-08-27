<template>
  <v-card>
    <v-row class="ma-0 pa-2">
      <v-col cols="4" class="pa-0">
        <v-card-title>{{ recipeInfo.title }}</v-card-title>
        <v-img :src="recipeInfo.img_path" class="recipeInfo-img ml-2" height="250" />
      </v-col>
      <v-spacer></v-spacer>
      <v-col cols="7">
        <v-card-text>{{ recipeInfo.description }}</v-card-text>
        <table style="width: 70%; border-collapse: collapse;" border="1">
          <tr>
            <th></th>
            <th style="text-align:center;">材料</th>
            <th style="text-align:center; width: 30%;">分量</th>
          </tr>
          <tr v-for="ingredient in recipeInfo.ingredients">
            <td style="width: 10%;"><v-checkbox style="margin: 0 auto; padding-left: 10px;" @change="selectIngredient(ingredient.id)" /></td>
            <td style="text-align:center;">{{ ingredient.name }}</td>
            <td style="text-align:right; padding-right: 10px;">{{ ingredient.quantity }}</td>
          </tr>
        </table>
        <div style="margin-left: 320px; margin-top: 30px;">
          <v-btn color="success" :href="orderLink" target="_blank" rel="noopener" :disabled="orderBtnDisabled">食材を注文する</v-btn>
          <br>
          <span style="color: grey; font-size: 12px;">　　※外部サイトに飛びます</span>
        </div>
      </v-col>
    </v-row>
    <div class="pl-4">
      <h3>レシピ</h3>
      <v-card-text style="white-space: pre-wrap; font-size: 20px;">{{recipeInfo.howto}}</v-card-text>
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
  created: function() {
    this.fetchRecipeInfo()
  },
  computed: {
    orderBtnDisabled: function(){
      if(this.recipeInfo.ingredients === undefined) {
        return false
      }
      if(this.recipeInfo.ingredients.find(ingredient => ingredient.selected == true)) {
        return true
      } else {
        return false
      }
    }
  },
  methods: {
    fetchRecipeInfo: function() {
      const recipeId = this.$route.params.id
      axios.get("/api/v1/recipe",{ params: { id: recipeId } } ).then(res => {
        this.recipeInfo = res["data"]
        this.recipeInfo.ingredients.map(ingredient => {
          ingredient["selected"] = false
        })
      })
    },
    selectIngredient: function(ingredientId) {
      const ingredient = this.recipeInfo.ingredients.find(ingredient => ingredient.id === ingredientId)
      ingredient.selected = !ingredient.selected
      this.changeOrderLink()
    },
    changeOrderLink: function() {
      let ingredients = this.recipeInfo.ingredients.filter(ingredient=> ingredient.selected == true)
      let ingredient_ids = ingredients.map(ingredient => ingredient.amazon_id).join('|')
      this.orderLink = `https://www.amazon.co.jp/s?hidden-keywords=${ingredient_ids}`
    }
  }
}
</script>
