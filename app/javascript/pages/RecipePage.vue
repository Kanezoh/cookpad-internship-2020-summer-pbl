<template>
  <v-card>
    <v-row class="ma-0">
      <v-col cols="4" class="pa-0">
        <v-card-title>{{ recipeInfo.title }}</v-card-title>
        <v-img :src="recipeInfo.img_path" class="recipeInfo-img" height="250" />
      </v-col>
      <v-spacer></v-spacer>
      <v-col cols="7">
        <v-card-text>{{ recipeInfo.description }}</v-card-text>
      </v-col>
    </v-row>
  </v-card>
</template>

<script>
import axios from 'axios'
export default {
  name: 'RecipePage',
  data: function() {
    return {
      recipeInfo: '',
    }
  },
  created: function() {
    this.fetchRecipeInfo()    
  },
  methods: {
    fetchRecipeInfo: function() {
      const recipeId = this.$route.params.id
      axios.get("/api/v1/recipe",{ params: { id: recipeId } } ).then(res => {
        this.recipeInfo = res["data"]["recipe"]
      })
    }
  }
}
</script>
