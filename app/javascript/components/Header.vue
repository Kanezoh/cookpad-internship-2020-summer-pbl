<template>
<header>
  <v-container class="pb-0">
    <v-row>
      <v-col cols="7">
      <router-link to="/" style="color: black; text-decoration: none;">
        <img src="/cookbox.png" height="63px" style="float:left;" class="mr-5" />
        <span class="sub-title ml-1">とどく、あける、料理する</span>
        <h1>CookBox</h1>
      </router-link>
      </v-col>
      <v-col style="text-align: right;" class="pb-0">
        <v-btn outlined class="pb-8 pt-8" to="/history">
          <v-icon style="font-size: 50px;">mdi-book-open</v-icon>
        </v-btn>
        <p class="pr-2 pt-2 mb-2">注文履歴</p>
      </v-col>
    </v-row>
  </v-container>
</header>
</template>

<script>
export default {
  name: 'Header'
}
</script>

<style scoped>
header {
  background-color:#9DEBA1;
}
h1 {
  letter-spacing: 10px;
  margin-top: -4px;
}
.sub-title {
  font-size: 15px;
  font-weight: bold;
}
</style>
