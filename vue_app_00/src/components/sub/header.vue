<template>
    <header class="mui-bar mui-bar-nav mui-bar-transparent head-back">
         <div>
            <div>
                <a href="#"><span class="mui-icon-extra mui-icon-extra-grech icon-grech"></span></a> 
            </div> 
            <div>
                <router-link to="/gz" class="on"><button>关注</button></router-link>
                <router-link to="/tj" class="on"><button>热门</button></router-link> 
            </div>
            <div>
                <a href="#"><span class="mui-icon-extra mui-icon-extra-outline icon-left"></span></a> 
                <a href="#"><span class="mui-icon mui-icon-search"></span></a>
            </div>  
         </div>
    </header>
</template>
<script>
    export default {
        data(){
            return {selected:{}}
		}
	}
</script>
<style>
  *{
      border:0;
      margin:0;
      padding:0;
   }
   header.mui-bar a{
      color:#000;
      text-decoration:none;
   }
   header.mui-bar>div{
      display:flex;
      justify-content:center;
      margin-top:-1px;
   }
   .mui-icon-extra-grech,.mui-icon-extra-outline{
      font-size: 24px;
      position: relative;
      z-index: 20;
      padding-top: 10px;
      padding-bottom: 10px;
   }
   .mui-icon-extra-grech.icon-grech{
      right:90px;
   }
   .mui-icon-extra-outline.icon-left{
      left:80px;
   }
   .mui-icon-search{
      left:90px;
   }
   header.mui-bar-nav.head-back{
      background:#FFE300;
   }
   .app-container header.mui-bar button{
      margin:5px 0;
      border:1px solid #000;
      background:#000;
      color:#FFE300;
   }
   .app-container header button:focus{
      background:#FFE300;
      color:#000;
   }
   .mint-tab-item:hover{
      border-bottom:2px solid #FFE300;
   }
</style>