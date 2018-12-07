<template>
   <div  class="app-homeContainer">
      <!--顶部导航条 1：-->
      <head-box></head-box>
      <!--轮播图    2：-->
      <mt-swipe  :auto="2000">
        <mt-swipe-item v-for="item in list" :key="item.id">
           <img :src="item.img_url" />
        </mt-swipe-item>
      </mt-swipe>
      <div class="back">
         <!--四宫格    3：-->
         <ul class="mui-table-view mui-grid-view">
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/">
               <img src="../../img/index/phb.png">
               <div class="mui-media-body">排行榜</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/t"><!--@click.stop.prevent="jumpShop()"-->
               <img src="../../img/index/yx.png"></img>
               <div class="mui-media-body">游戏</div></router-link></li> 
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/">
               <img src="../../img/index/sc.png">
               <div class="mui-media-body">商城</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/">
               <img src="../../img/index/fl.png">
               <div class="mui-media-body">分类</div></router-link></li>
         </ul>
      </div>
      <!--人气飙升-->
      <div class="kuaiui_panel">
         <article class="kuaiui_article list_theme_a">
            <div class="hd">
               <p class="hd_title">人气飙升</p>
               <a href="#" class="icon-corner"></a>
            </div>
            <div class="bd">
               <ul class="clearfix">
                  <li class="click-point">
                     <a href="#" class="item">
                        <img src="../../img/index/sziw811d3.webp-w320.w.jpg">
                        <span class="tit">照明商店</span>
                        <div class="comm-mask">&nbsp;&nbsp;</div>
                     </a>
                  </li>
                  <li class="click-point">
                     <a href="#" class="item">
                        <img src="../../img/index/4diVYyMUJ.webp-w320.w.jpg">
                        <span class="tit">蝉女</span>
                        <div class="comm-mask">&nbsp;&nbsp;</div>
                     </a>
                  </li>
                  <li class="click-point">
                     <a href="#" class="item">
                        <img src="../../img/index/KD7348uAV.webp-w320.w.jpg">
                        <span class="tit">当校霸爱上学霸</span>
                        <div class="comm-mask">&nbsp;&nbsp;</div>
                     </a>
                  </li>
               </ul>
            </div>
         </article>
      </div>
      <!--每周排行榜-->
      <div class="kuaiui_panel" id="test">
         <article class="kuaiui_article list_theme_d">
            <div class="hd">
               <div class="hd_title">每周排行榜</div>
               <p class="icon-horn">每周一出榜</p>
            </div>
            <div class="bd">
               <div class="wrapper ranking kkranking">
                  <ul class="clearfix">
                     <li class="click-point" v-for="item in res" :key="item.id">
                        <a href="#" class="list clearfix">
                           <div class="pic">
                              <img :src="item.pic" class="cover">
                           </div>
                           <div class="cont f">
                              <h2>
                                 <span class="cont-number color-red">{{item.pid}}</span>
                                 {{item.title}}
                              </h2>
                              <p class="cont-author">{{item.details}}</p>
                           </div>
                        </a>
                     </li>
                  </ul>
               </div>
               <mt-button class="btn-color" type="primary" size="large" @click ="getMore()">加载更多</mt-button>
            </div>
         </article>
      </div>
      <!--新作出炉-->
      <div class="kuaiui_panel">
         <article class="kuaiui_article list_theme_c">
            <div class="hd">
               <p class="hd_title">
                  新作出炉
               </p>
               <a href="#" class="icon-corner"></a>
            </div>
            <div class="bd">
               <ul class="clearfix">
                  <li class="click-point">
                     <a href="#" class="item">
                        <img src="../../img/index/NaKqPPYKT.webp-w750.jpg">
                        <span class="tit">吾凰在上</span>
                     </a>
                  </li>
               </ul>
            </div>
         </article>
      </div>
      <!--主编力推-->
      <div class="kuaiui_panel">
         <article class="kuaiui_article list_theme_a">
            <div class="hd">
               <p class="hd_title">
                  主编力推
               </p>
               <a href="#" class="icon-corner"></a>
            </div>
            <div class="bd">
               <ul class="clearfix">
                  <li class="click-point" v-for="item in zb" :key="item.id">
                     <a href="#" class="item">
                        <img :src="item.pic">
                        <span class="tit">{{item.title}}</span>
                        <div class="comm-mask">&nbsp;&nbsp;</div>
                     </a>
                  </li>
               </ul>
            </div>
         </article>
      </div>
      <!--官方活动-->
      <div class="kuaiui_panel">
         <article class="kuaiui_article list_theme_b">
            <div class="hd">
               <p class="hd_title">
                  官方活动
               </p>
            </div>
            <div class="bd">
               <ul class="clearfix">
                  <li class="click-point">
                     <a href="#" class="item">
                        <div class="pic">
                           <img src="../../img/index/yht9kgx0k.webp-w640.png">
                        </div>
                        <span class="tit">8月金钻计划</span>
                     </a>
                  </li>
                  <li class="click-point">
                     <a href="#" class="item">
                        <div class="pic">
                           <img src="../../img/index/agretj72c.webp-w640.png">
                        </div>
                        <span class="tit">招聘漫画制作人</span>
                     </a>
                  </li>
               </ul>
            </div>
         </article>
      </div>
      <!--所有作品-->
      <div class="kuaiui_panel">
         <article class="kuaiui_article list_theme_a">
            <div class="hd">
               <p class="hd_title">
                  所有作品
               </p>
               <a href="#" class="icon-corner"></a>
               <div class="bd">
                  <ul class="clearfix">
                     <li class="click-point" v-for="item in sy" :key="item.id">
                        <a href="#" class="item">
                           <img :src="item.pic">
                           <span class="tit">{{item.title}}</span>
                           <div class="comm-mask">&nbsp;&nbsp;</div>
                        </a>
                     </li>
                  </ul>
               </div>
            </div>
         </article>
      </div>
   </div>
</template>
<script>
  import head from "../sub/head.vue";
  export default {
    data(){
      return {
         list:[],
         res:[],
         zb:[],
         sy:[],
         pageIndex:0
         }  //创建data属性保存数据
    },
    methods:{
      getMore(){
         this.pageIndex++; //页码加 1
         var url= "getdeta?pno="+this.pageIndex;
         this.$http.get(url).then(result=>{
            //赋值有问题，覆盖上一页数据
            //this.list=result.body.msg.data;
            //保存前一页
            this.res=this.res.concat(result.body.msg.data);
         });
      },
      getImage(){
        //发送ajax请求并且获取图片列表并且显示
         this.$http.get("imagelist").then(result=>{
            this.list=result.body;
         })
      },
      /*getdeta(){
         this.$http.get("getdeta").then(result=>{
            this.res=result.body;
         })
      },*/
      getzb(){
         this.$http.get("getzb").then(result=>{
            this.zb=result.body;
            console.log(this.zb);
         })
      },
      getsy(){
         this.$http.get("getsy").then(result=>{
            this.sy=result.body;
            console.log(this.sy);
         })
      }
    },
    created(){
      this.getImage();
      //this.getdeta();
      this.getzb();
      this.getsy();
      this. getMore();
    },
    components:{
       "head-box":head
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
   /*图片轮播设置高度*/
  .app-homeContainer .mint-swipe{
    height:255px;
  }
  .app-homeContainer .mint-swipe img{
    width:100%;
  }
  /*四宫格*/
  div.back>ul.mui-table-view.mui-grid-view{
     background:#fff;
  }
  li.mui-table-view-cell.mui-media.mui-col-xs-4.mui-col-sm-3{
     margin-right: -40px;
  }
  /*人气飙升 */
  .kuaiui_panel {
    background-color: #fff;
    position: relative;
    overflow: hidden;
   }
   .kuaiui_article {
    margin-top: 8px;
    position: relative;
   }
   .kuaiui_article .hd_title:before {
    content: " ";
    width: 12px;
    height: 36px;
    position: absolute;
    top: 4px;
    left: 14px;
    -webkit-transform: scale(0.5);
    transform: scale(0.5);
    -webkit-transform-origin: 0 0;
    transform-origin: 0 0;
    box-sizing: border-box;
    -webkit-border-radius: 10px;
    border-radius: 10px;
    background-color: #f4bc45;
   }
   .kuaiui_article .hd_title {
    font-size: 16px;
    padding: 0 14px;
    margin-left: 12px;
    margin-bottom: 8px;
    color: #666;
    font-weight: 700;
   }  
   .kuaiui_article .hd a.icon-corner {
    display: block;
    position: absolute;
    top: 0;
    right: 0;
    width: 22px;
    height: 16px;
    background: url(../../img/index/icon_corner_de89076.png) no-repeat 0 0;
    background-size: contain;
    margin: 4px 14px 0 0;
    text-indent: -9999px;
   }
  .hd_title {
      font-size: 16px;
      padding: 0 14px;
      margin-left: 12px;
      margin-bottom: 8px;
      color: #666;
      font-weight: 700;
   }
   .list_theme_a .bd li {
    float: left;
    width: 33.3%;
    box-sizing: border-box;
    padding: 6px;
    list-style: none;
   }
   .list_theme_a .bd li a {
    display: block;
    position: relative;
    overflow: hidden;
   }
   .list_theme_a .bd li img {
    width: 100%;
   }
   a img {
      border: 0;
   }
   .list_theme_a .bd li .tit {
    color: #fff;
    position: absolute;
    left: 5px;
    top:120px;
    bottom: 0rem;
    width: 100%;
    height: 1.5rem;
    line-height: 1.5rem;
    padding: 0 6px;
    box-sizing: border-box;
    z-index: 22;
    white-space: nowrap;
    overflow: hidden;
    -webkit-text-overflow: ellipsis;
    text-overflow: ellipsis;
    font-size: .7rem;
   }
   .list_theme_a .bd li .comm-mask {
    position: absolute;
    left: 0;
    top:110px;
    bottom: 0rem;
    width: 100%;
    height: 2.5rem;
    background:#000;
    opacity:0.3;
    z-index: 20;
   }
   div.bd>.btn-color{
      background:#FDE23D;
      color:#000;
      border-radius:50px;
   }
   /*每周排行榜 */
   .list_theme_d .hd {
    position: relative;
   }
   .list_theme_d .hd p {
    position: absolute;
    top: 0;
    right: 0;
    font-size: 13px;
    padding: 4px 14px;
    padding-left: 18px;
    color: #999;
   }
   .list_theme_d .hd p.icon-horn:before {
    content: "";
    width: 14px;
    height: 12px;
    position: absolute;
    left: 0;
    top: 7px;
    background: url(../../img/index/icon_discover_time_6b88aac.png) no-repeat 0 0;
    background-size: contain;
   }
   .kkranking {
    position: relative;
    overflow: hidden;
   }
   .kkranking ul {
    position: relative;
    overflow: hidden;
    border-bottom: 1px solid #e6e6e6;
    margin-bottom: 15px;
   }
   .kkranking li {
    list-style: none;
   }
   .kkranking li a {
    display: block;
    border-top: 1px solid #e6e6e6;
   }
   .clearfix, .clx {
    *zoom: 1;
   }
   .kkranking li .pic {
    float: left;
    width: 6.4rem;
    margin-top: 8px;
    margin-left: 5px;
   }
   .kkranking li .pic .cover {
    width: 100%;
   }
   .kkranking li .cont {
    padding-left: 7.1rem;
    padding-top: .3rem;
    padding-right: .5rem;
   }
   .kkranking li .cont h2 {
    font-size: 1.3rem;
    color: #333;
    white-space: nowrap;
    overflow: hidden;
    -webkit-text-overflow: ellipsis;
    text-overflow: ellipsis;
   }
   .kkranking li .cont .color-red {
    color: #e40121;
   }
   .kkranking li .cont .cont-author {
    font-size: 14px;
    color: #999;
    padding-left: 1.7rem;
    padding-top:10px;
    white-space: nowrap;
    overflow: hidden;
    -webkit-text-overflow: ellipsis;
    text-overflow: ellipsis;
   }
   .clearfix:after, .clx:after {
    content: '\0020';
    display: block;
    height: 0;
    clear: both;
    visibility: hidden;
   }
   /*新作出炉 */
   .list_theme_c .bd li {
    padding: 0 12px;
    list-style: none;
   }
   .list_theme_c .bd li a {
    display: block;
    position: relative;
   }
   .list_theme_c .bd li img {
    width: 100%;
   }
   .list_theme_c .bd li .tit {
    display: none;
    color: #333;
    width: 100%;
    height: 30px;
    line-height: 30px;
    padding: 0 6px;
    box-sizing: border-box;
    white-space: nowrap;
    overflow: hidden;
    -webkit-text-overflow: ellipsis;
    text-overflow: ellipsis;
   }
   /*官方活动 */
   .list_theme_b .bd li {
    float: left;
    width: 50%;
    box-sizing: border-box;
    padding: 0 6px;
    list-style: none;
   }
   .list_theme_b .bd li a {
    display: block;
    position: relative;
   }
   .list_theme_b .bd li .pic {
    height: 4.7rem;
    overflow: hidden;
   }
   .list_theme_b .bd li img {
    width: 100%;
   }
   .list_theme_b .bd li .tit {
    display: block;
    color: #333;
    width: 100%;
    height: 1.5rem;
    line-height: 1.5rem;
    padding: 0 6px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    white-space: nowrap;
    overflow: hidden;
    -webkit-text-overflow: ellipsis;
    text-overflow: ellipsis;
    font-size: .8rem;
   }
   /*所有作品 */
   div.app-homeContainer>div:last-child{
      margin-bottom:50px;
   }
</style>