<template>
  <div>
    <h3 class="">作りたいレシピを探す</h3>
    <v-form>
      <v-row>
        <v-spacer></v-spacer>
        <v-col cols="5">
          <v-text-field placeholder="料理名・食材名" outlined />
        </v-col>
        <v-col cols="2">
          <v-btn height="56" class="search-btn" color="#EAE4D8">検索</v-btn>
        </v-col>
      </v-row>
    </v-form>
    <p>カテゴリから探す</p>
    <v-row style="background-color: #EAE4D8;" class="mr-0 ml-0 mb-10">
      <v-col v-for="category in categories" :key="category.id" cols="3">
        <router-link :to="`/recipes?tag_id=${category.id}`">
          ・<span style="text-decoration: underline; color: #C69856; font-weight: bold;">{{ category.name}}({{ category.count}})</span>
        </router-link>
      </v-col>
    </v-row>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'Search',
  data: function() {
    return {
      categories: []
    }
  },
  created: function() {
    this.fetchTags()
  },
  methods: {
    fetchTags: function() {
      axios.get('api/v1/tags').then(res => {
        this.categories = res["data"]["tags"]
      })
    }
  }
}
</script>

<style scoped>
.search-btn {
  font-weight: bold;
}
</style>
