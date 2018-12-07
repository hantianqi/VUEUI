import Vue from 'vue'
import Router from 'vue-router'
import Mint from 'mint-ui';
/*import HelloContainer from "./components/HelloWorld.vue"*/
Vue.use(Mint);
//1:引入自定义组件 
import TueiJian from "./components/tabbar/TueiJian.vue";
import homeGz from "./components/tabbar/GuanZhu.vue";
import homeContainer from "./components/tabbar/HomeContainer.vue";
import homeFl from "./components/tabbar/HomeFl.vue";
import login from "./components/tabbar/login.vue";
import logInfo from "./components/tabbar/logInfo.vue";
import register from "./components/tabbar/register.vue";
import news from './components/news/news.vue';
import newslist from './components/news/newsList.vue';
import list from './components/list/list.vue';
Vue.use(Router)
//2:配置访问自定义组件路径
//   {path访问路径 component  组件名称}
export default new Router({
  routes: [
    {path:'/',redirect:"/home"},
    {path:"/tj",component:TueiJian},
    {path:"/gz",component:homeGz},
    {path:"/home",component:homeContainer},
    {path:"/home/fl",component:homeFl},
    {path:"/home/login",component:login},
    {path:"/home/logInfo",component:logInfo},
    {path:"/home/register",component:register},
    {path:"/home/news",component:news},
    {path:"/home/newslist",component:newslist},
    {path:"/home/list",component:list}
  ]
})


