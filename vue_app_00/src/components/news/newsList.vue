<template>
  <div class="app-newslist">
    <header>
      <mt-header title="序章 逆天魔女的禁忌守护" class="header-background">
        <router-link to="/home/news" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
      </mt-header>
    </header>
    <div id="container">
      <ul>
        <li v-for="item in list" :key="item.id" class="li-img">
          <img v-lazy.container="item.pic">
        </li>
      </ul>
    </div>
    <div class="div-flex">
      <div class="div-left">&lt;上一篇</div>
      <div>下一篇&gt;</div>
    </div>
  </div>
</template>
<script>
  export default {
    data(){
      return {
         list:[]
      }
    },
    methods:{
      getlist(){
          this.$http.get("getnewslist").then(result=>{
            this.list=result.body;
          })
      }
    },
    created(){
      this.getlist();
    }
  }
</script>
<style>
  div.app-newslist{
    margin-bottom:50px;
  }
  div.app-newslist .header-background{
    background:#FFE300;
    font-size:15px;
    color:#000;
    padding:10px 10px;
  }
  li.li-img img{
    width: 100%;
    margin-top:-5px;
    padding:0;
    border:0;
  }
  div.div-flex{
    display:flex;
    justify-content:space-between;
    margin-top:-5px;
    padding:20px 0;
    background:#fff;
  }
  div.div-flex div{
    padding:0 40px;
  }
  div.div-flex div.div-left{
    border-right:1px solid #ddd;
    padding-right:80px;
  }
</style>