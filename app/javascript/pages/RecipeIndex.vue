<template>
  <div>
    <h3 v-if="tag"><{{ tag.name }}>タグのレシピ</h3>
    <v-card v-for="recipe in recipes" :key="recipe.id" class="recipe-card mb-4" height="250px">
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
import axios from 'axios'
export default {
  name: 'RecipeIndex',
  data: function() {
    return {
      recipes: [],
      tag: ''
    }
  },
  created: function() {
    this.fetchRecipes()
    if (this.$route.query.tag_id) {
      this.fetchTag()
    }
  },
  methods: {
    fetchRecipes: function() {
      axios.get('api/v1/recipes', {params: {tag_id: this.$route.query.tag_id}}).then(res => {
        this.recipes = res["data"]["recipes"]
      })
    },
    fetchTag: function() {
      axios.get('api/v1/tag', {params: {tag_id: this.$route.query.tag_id}}).then(res => {
        this.tag = res["data"]["tag"]
      })
    }
  },
  watch: {
    '$route'(to, from) {
      this.fetchRecipes()
      this.fetchTag()
    }
  },
}
</script>

<style scoped>
</style>
