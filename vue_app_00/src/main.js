import Vue from 'vue'
import App from './App.vue'
import router from './router'

import'mint-ui/lib/style.css'
Vue.config.productionTip = false
import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'

//引入组件mintui库Header
//-引入指定组件
/*
import {Button,Header,Swipe,SwipeItem,Lazyload} from "mint-ui"; 
//-注册当前项目中 <mt-header>    "tt-header"
Vue.component(Button.name,Button);
Vue.component(Header.name,Header);
Vue.component(Swipe.name,Swipe);  //"mt-swipe"
Vue.component(SwipeItem.name,SwipeItem);
Vue.use(Lazyload);
*/

import VueResource from "vue-resource";
Vue.use(VueResource);

//完整引入
import MintUI from "mint-ui";
Vue.use(MintUI);

Vue.filter("dateFilter",function(val){
  var date=new Date(val);
  var y=date.getFullYear();
  var m=date.getMonth()+1;
  var d=date.getDate();
  m<10&&(m="0"+m);
  d<10&&(d="0"+d);
  return `${y}-${m}-${d}`;
})

Vue.filter("datetimeFilter",function(val){
  var date=new Date(val);
  var y=date.getFullYear();
  var m=date.getMonth()+1;
  var d=date.getDate();
  var h=date.getHours();
  var mi=date.getMinutes();
  var s=date.getSeconds();
  m<10&&(m="0"+m);
  d<10&&(d="0"+d);
  return `${y}-${m}-${d} ${h}:${mi}:${s}`;
});

Vue.http.options.root="http://127.0.0.1:3000/"
//Vue.http.options.emulateJSON=true

//4.创建Vuex实例对象
  //4.1下载安装Vuex npm i vuex -D
  //4.2引入Vuex
  import Vuex from "vuex"
  //4.3注册Vuex实例
  Vue.use(Vuex)
  //4.4创建Vuex实例对象
  var store=new Vuex.Store({
    state:{count:0},    //购物车中商品数量
    mutations:{
      //修改共享数据的两个方法
      increment(state,c){
        state.count+=parseInt(c);
      },    
      substract(state){
        state.count--
      }     //参数共享数据属性
    },
    getters:{
      optCount:function(state){
        return state.count;   //返回共享数据
      }
    }
  })

//5.将Vuex实例对象注册Vue实例
new Vue({
  router,
  render: h => h(App),
  store
}).$mount('#app')
