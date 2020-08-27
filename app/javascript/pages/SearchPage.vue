<template>
  <div>
    <v-card v-for="recipe in recipes" :key="recipe.id" class="recipe-card mb-4" height="250px">
      <router-link :to="`/recipes/${recipe.id}`" style="text-decoration: none; color: black;">
        <v-row class="ma-0">
          <v-col cols="3" class="pa-0">
            <v-img :src="recipe.img_path" class="recipe-img" height="250" />
          </v-col>
          <v-col cols="9">
            <v-card-title style="text-decoration: underline;">{{ recipe.title }}</v-card-title>
            <v-card-text>{{ recipe.description }}</v-card-text>
          </v-col>
        </v-row>
      </router-link>
    </v-card>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'SearchPage',
  data: function() {
    return {
      recipes: [],
    }
  },
  created: async function() {
    await this.searchRecipes()
    console.log(this.recipes)
  },
  methods: {
    searchRecipes: async function() {
      const searchWord = this.$route.query.search_word
      const res = await axios.get('/api/v1/search', {params:{search_word: searchWord}})
      this.recipes = res["data"]["recipes"]
    }
  },
  watch: {
    '$route'(to, from) {
      this.searchRecipes()
    }
  },
}
</script>
