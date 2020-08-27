<template>
<div>
  <p style="text-align: right; text-decoration: underline;">お近くの受け取り場所</p>
  <Search />
  <RecipeIndex />
</div>
</template>

<script>
import RecipeIndex from '../components/RecipeIndex.vue'
import Search from '../components/Search.vue'
export default {
  name: 'TopPage',
  components: {
    RecipeIndex,
    Search,
  },
}
</script>
