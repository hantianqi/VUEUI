<template>
    <!--导航栏-->
        <mt-navbar v-model="selected" class="navbar">
               <mt-tab-item id="1" class="item">全部</mt-tab-item>
               <mt-tab-item id="2" class="item">恋爱</mt-tab-item>
               <mt-tab-item id="3" class="item">古风</mt-tab-item>
               <mt-tab-item id="4" class="item">爆笑</mt-tab-item>
               <mt-tab-item id="5" class="item">奇幻</mt-tab-item>
        </mt-navbar>
</template>
<script>
    export default {
        data(){
          return{selected:""}
        }
    }
</script>
<style>
    /*导航栏 */
    *{
      border:0;
      margin:0;
      padding:0;
    }
    .navbar{
        margin-top:-5px;
        padding-top:40px;
    }
    .item>.mint-tab-item-label{
      font-size:15px;
      color:#000;
      text-decoration:none;
    }
</style>