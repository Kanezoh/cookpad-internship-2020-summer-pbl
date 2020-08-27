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
        ・<span style="text-decoration: underline; color: #C69856; font-weight: bold;">{{ category.name}}({{ category.count}})</span>
      </v-col>
    </v-row>
  </div>
</template>

<script>
export default {
  name: 'Search',
  data: function() {
    return {
      categories: [
        { id: 1, name: '時短料理', count: 17}, 
        { id: 2, name: '魚料理', count: 32}, 
        { id: 3, name: '日本料理', count: 9}, 
        { id: 4, name: '揚げ物', count: 35}, 
        { id: 5, name: '丼もの', count: 22}, 
        { id: 6, name: 'エスニック', count: 9}, 
        { id: 7, name: '中華', count: 42}, 
        { id: 8, name: 'イタリアン', count: 23}, 
        { id: 9, name: 'フレンチ', count: 12}, 
        { id: 10, name: '焼肉', count: 20}, 
        { id: 11, name: 'しゃぶしゃぶ', count: 11}, 
        { id: 12, name: 'ケーキ', count: 33}, 
        { id: 13, name: 'スイーツ', count: 50}, 
        { id: 14, name: 'おでん', count: 4}, 
        { id: 15, name: 'カレー', count: 6}, 
        { id: 16, name: '麺', count: 22}, 
        { id: 17, name: 'パン', count: 19}, 
        { id: 18, name: 'ジビエ', count: 2}, 
        { id: 19, name: 'B級', count: 4}, 
        { id: 20, name: '煮物', count: 52}, 
      ]
    }
  }
}
</script>

<style scoped>
.search-btn {
  font-weight: bold;
}
</style>
