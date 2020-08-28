<template>
  <div>
    <h3>履歴</h3>
    <v-card v-for="recipe in recipes" class="recipe-card mb-4" height="250px">
      <router-link :to="`/recipes/${recipe.id}`" style="text-decoration: none; color: black;">
        <v-row class="ma-0">
          <v-col cols="6" sm="3" class="pa-0">
            <v-img :src="recipe.img_path" class="recipe-img" height="250" />
          </v-col>
          <v-col cols="6" sm="9">
            <v-card-title style="text-decoration: underline;">{{ recipe.title }}</v-card-title>
            <v-card-text>{{ recipe.description }}</v-card-text>
          </v-col>
        </v-row>
      </router-link>
    </v-card>
  </div>
</template>

<script>
export default {
  name: 'History',
  date: function() {
    return {
      recipes: []
    }
  },
  created: function() {
    this.recipes = JSON.parse(localStorage.getItem('recipeInfos')).reverse()
  }
}
</script>
