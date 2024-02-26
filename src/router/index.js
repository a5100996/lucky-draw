import Vue from 'vue';
import VueRouter from 'vue-router';
import Home from '../views/Home.vue';
import App from '../App.vue';
import Setting from '../views/Setting.vue'; // 引入 Setting 組件

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    name: 'home',
    component: Home
  },
  {
    path: '/setting', // 新增的設定路徑
    name: 'setting',
    component: Setting // 指定對應的組件為 Setting
  },
  {
    path: '/app',
    name: 'app',
    component: App
  },
];

const router = new VueRouter({
  base: process.env.BASE_URL,
  routes
});

export default router;
