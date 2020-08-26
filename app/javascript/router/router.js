import Vue          from 'vue'
import VueRouter from 'vue-router'
import TopPage from '../pages/TopPage.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/',  name: 'TopPage', component: TopPage },
];

export default new VueRouter({ routes })
