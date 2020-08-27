<template>
  <v-app id="app">
    <Header />
    <v-container>
      <Tag v-if="!this.$route.fullPath.match(/\/recipes\/\d/)"/>
      <router-view />
    </v-container>
    <Footer />
  </v-app>
</template>

<script>
import Header from '../components/Header'
import Tag from '../components/Tag'
import Footer from '../components/Footer'
export default {
  name: 'App',
  components: {
    Header,
    Tag,
    Footer,
  }
}
</script>

<style scoped>
#app {
  background-color: #F4F5F7;
}
</style>
