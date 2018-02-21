import Vue from 'vue'
import Router from 'vue-router'
import Home from '../pages/home'
import Gank from '../pages/gank'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/gank',
      name: 'Gank',
      component: Gank
    }
  ]
})
