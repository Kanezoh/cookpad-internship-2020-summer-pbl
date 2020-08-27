<template>
  <div>
    <h3>作りたいレシピを探す</h3>
    <v-form>
      <v-row class="ma-0">
        <v-col cols="8" sm="5">
          <v-text-field placeholder="料理名・食材名" outlined v-model="searchWord" />
        </v-col>
        <v-col cols="4" sm="2">
          <v-btn height="56" class="search-btn" color="#EAE4D8" :to="`/search?search_word=${searchWord}`">検索</v-btn>
        </v-col>
      </v-row>
    </v-form>
    <h3 class="mb-5">タグから探す</h3>
    <v-row style="background-color: #EAE4D8;" class="mr-0 ml-0 mb-10">
      <v-col v-for="category in categories" :key="category.id" cols="6" sm="3">
        <router-link :to="`/recipes?tag_id=${category.id}`" style="text-decoration:none;">
          <span style="color:black;">・</span><span style="text-decoration: underline; color: #C69856; font-weight: bold;">{{ category.name}}({{ category.count}})</span>
        </router-link>
      </v-col>
    </v-row>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'Tag',
  data: function() {
    return {
      categories: [],
      searchWord: this.$route.query.searchWord,
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
