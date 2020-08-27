import Vue          from 'vue'
import VueRouter from 'vue-router'
import TopPage from '../pages/TopPage.vue'
import RecipePage from '../pages/RecipePage.vue'
import RecipeIndex from '../pages/RecipeIndex.vue'
import SearchPage from '../pages/SearchPage.vue'
import History from '../pages/History.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/', name: 'TopPage', component: TopPage },
  { path: '/recipes/:id', name: 'RecipePage', component: RecipePage },
  { path: '/recipes/', name: 'RecipeIndex', component: RecipeIndex },
  { path: '/search', name: 'SearchPage', component: SearchPage },
  { path: '/history', name: 'History', component: History },
];

export default new VueRouter({ routes })
