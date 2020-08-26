import Vue    from 'vue'
import App    from './App.vue'
import Router from '../router/router.js'
import Store from '../store/store.js'
import Vuetify from "vuetify"
import "vuetify/dist/vuetify.min.css"

Vue.use(Vuetify)
const vuetify = new Vuetify({
  icons: {
    iconfont: 'mdiSvg',
  },
})

const app = new Vue({
   el: '#app',
   router: Router,
   store: Store,
   vuetify,
   render: h => h(App)
})
