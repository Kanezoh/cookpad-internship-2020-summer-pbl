import Vue          from 'vue'
import VueRouter from 'vue-router'
import TopPage from '../pages/TopPage.vue'
import RecipePage from '../pages/RecipePage.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/', name: 'TopPage', component: TopPage },
  { path: '/recipes/:id', name: 'RecipePage', component: RecipePage },
];

export default new VueRouter({ routes })
