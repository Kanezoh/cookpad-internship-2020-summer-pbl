<template>
  <v-app id="app">
    <Header />
    <v-container>
      <router-view />
    </v-container>
  </v-app>
</template>

<script>
import Header from '../components/Header'
export default {
  name: 'App',
  components: {
    Header,
  }
}
</script>

<style scoped>
#app {
  background-color: #F4F5F7;
}
</style>
