<template>
    <header class="head">
         <div>
            <div class="d1">
               <router-link to="/home"><button class="btn1">推荐</button></router-link> 
               <router-link to="/home/fl"><button class="btn2">分类</button></router-link> 
            </div>
            <div class="d2">
               <span class="mui-icon mui-icon-search"></span>
            </div>
         </div>
    </header>
</template>
<script>
    export default{
        data(){
            return {}
        }
    }
</script>
<style>
    *{
      border:0;
      margin:0;
      padding:0;
   }
   a {
    text-decoration: none;
   }
   /*头部 */
   header.head,header.head div{
      text-align:center;
      display:flex;
      justify-content:center;
      margin-top:5px;
   }
   header.head>div{
      position:absolute;
      z-index: 1;
   }
   header.head div.d1 button{
      border:1px solid #000;
      background:#000;
      opacity:.7;
      color:#fff;
   }
   header.head div.d1 button:focus{
      color:#F79503;
      background:#fff;
   }
   header.head div.d1 button.btn1{
      border-radius:40% 0% 0% 40%;
   }
   header.head div.d1 button.btn2{
      border-radius:0% 40% 40% 0%;
   }
   header.head div.d2{
      position:absolute;
      right:-120px;
      background:#000;
      opacity:.4;
      color:#fff;
      border-radius:50%;
      padding:5px;
   }
</style>