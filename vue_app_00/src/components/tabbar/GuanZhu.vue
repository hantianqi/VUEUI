<template>
    <div id="app-tueijian">
         <!--顶部导航条 1：-->
         <header-box></header-box>
         <!--列表-->
         <div class="list list-mar">
            <div class="mui-card" v-for="item in list" :key="item.id">
               <!--页眉，放置标题-->
               <div class="mui-card-header">
                  <div class="mui-media-body mui-mar">
                     {{item.title}}
                  </div>
                  <div class="div-font div-padding">全集&gt;</div>
               </div>
               <!--内容区-->
               <div class="mui-card-content">
                  <img :src="item.pic">
               </div>
               <!--页脚，放置补充信息或支持的操作-->
               <div class="mui-card-footer">
                  <span>{{item.details}}</span>
                  <span class="span-px1">{{item.click}}</span>
                  <span class="span-px2">{{item.appraised}}</span>
               </div>
            </div>
         <h1>没有更多了</h1>
         </div>
    </div>
</template>
<script>
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
       "header-box":header
    }
  }
</script>
<style>
   div.list.list-mar{
      margin-top:50px;
   }
   div.mui-media-body span.span-mar{
      color:#fff;
      font-size:15px;
      margin-left:-10px;
   }
   div.mui-media-body.mui-mar{
      margin-bottom:10px;
   }
   div.div-font.div-padding{
      padding-bottom:10px;
   }
</style>