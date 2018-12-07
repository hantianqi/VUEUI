<template>
    <div id="app-tueijian">
         <!--顶部导航条 1：-->
         <header-box></header-box>
         <navbar-box></navbar-box>
         <!--列表-->
         <div class="list">
            <div class="mui-card" v-for="item in list" :key="item.id">
               <!--页眉，放置标题-->
               <div class="mui-card-header">
                  <div class="mui-media-body">
                     <span class="span-back">{{item.classify}}</span>{{item.title}}
                     <p>作者：{{item.author}}</p>
                  </div>
                  <div class="div-font"><router-link to="/home/news">全集&gt;</router-link></div>
               </div>
               <!--内容区-->
               <router-link to="/home/newslist">
                  <div class="mui-card-content">
                     <img :src="item.pic">
                  </div>
                  <!--页脚，放置补充信息或支持的操作-->
                  <div class="mui-card-footer">
                     <span>{{item.details}}</span>
                     <span class="span-px1">{{item.click}}</span>
                     <span class="span-px2">{{item.appraised}}</span>
                  </div>
               </router-link>
            </div>
            <h1>没有更多了</h1>
         </div>
    </div>
</template>
<script>
   import navbar from '../sub/navbar';
   import header from '../sub/header.vue';
   export default {
    data(){
      return {
         list:[]
      }  //创建data属性保存数据
    },
   methods:{
      getlist(){
         this.$http.get("getrm").then(result=>{
            this.list=result.body;
         })
      }
   },
   created(){
      this.getlist();
   },
    components:{
       "header-box":header,
       "navbar-box":navbar
    }
  }
</script>
<style>
   div a{
      color:#000;
   }
   div.list{
     margin-bottom:100px;
   }
   div.mui-media-body span.span-back{
      background:#c6f;
      color:#fff;
      font-size:15px;
      border-radius:20%;
      padding:5px;
      margin-right:5px;
   }
   div.mui-media-body p{
      margin-top:10px;
      font-size:13px;
   }
   div.mui-media-body+div.div-font{
      font-size:16px;
      color:#8f8f94;
      padding-bottom: 18px;
   }
   div.mui-card-footer span.span-px1{
      background: url(../../img/list/icon-praise_6818bfb.png) no-repeat 0 0;
      background-size: .9rem;
      line-height: 1;
      padding-left: 1.1rem;
      margin-left: 80px;
   }
   div.mui-card-footer span.span-px2{
      background: url(../../img/list/icon-comment_a2d3b4c.png) no-repeat 0 0;
      background-size: .9rem;
      line-height: 1;
      padding-left: 1.1rem;
   }
   div.mui-card-content img{
      width:100%;
   }
   div.mui-card div.mui-card-header{
      padding-bottom:0;
   }
   div.list h1{
      color:#8f8f94;
      text-align:center;
      margin-top:30px;
   }
</style>