<template>
<div>
  <h3>今日のおすすめレシピ</h3>
  <div v-for="n in 5" :key="n">
    <v-card v-for="recipe in recipes" :key="recipe.id" class="recipe-card mb-4" height="250px">
      <router-link :to="`/recipes/${recipe.id}`" style="text-decoration: none; color: black;">
        <v-row class="ma-0">
          <v-col cols="3" class="pa-0">
            <v-img :src="recipe.img_path" class="recipe-img" height="250" />
          </v-col>
          <v-col cols="9">
            <v-card-title style="text-decoration: underline;">{{ recipe.title }}</v-card-title>
            <v-card-text>{{ recipe.description.repeat(10) }}</v-card-text>
          </v-col>
        </v-row>
      </router-link>
    </v-card>
  </div>
</div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'RecipeIndex',
  data: function() {
    return {
      recipes: []
    }
  },
  created: function() {
    this.fetchRecipes()
  },
  methods: {
    fetchRecipes: function() {
      axios.get('api/v1/recipes').then(res => {
        this.recipes = res["data"]["recipes"]
      })
    }
  }
}
</script>

<style scoped>
</style>
