<template>
<header class="pt-2 pb-2">
  <v-container>
    <div>
      <img src="/cookbox.png" height="63px" style="float:left;" class="mr-5" />
      <span class="sub-title ml-1">とどく、あける、料理する</span>
      <h1>CookBox</h1>
    </div>
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
