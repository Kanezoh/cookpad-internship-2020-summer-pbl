import Vue          from 'vue'
import VueRouter from 'vue-router'
import TopPage from '../pages/TopPage.vue'
import RecipePage from '../pages/RecipePage.vue'
import RecipeIndex from '../pages/RecipeIndex.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/', name: 'TopPage', component: TopPage },
  { path: '/recipes/:id', name: 'RecipePage', component: RecipePage },
  { path: '/recipes/', name: 'RecipeIndex', component: RecipeIndex },
];

export default new VueRouter({ routes })
