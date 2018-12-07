<template>
    <div class="app-fl">
        <!--顶部导航条 1：-->
         <head-box></head-box>
         <!--导航栏-->
         <nav-box></nav-box>
         <!--全部-->
         <div class="ls-body pull_up_more">
            <ul>
                <li class="click-point" v-for="item in list" :key="item.id">
                    <div class="box clearfix">
                        <div class="left-box">
                            <img :src="item.pic">
                        </div>
                        <div class="right-box">
                            <p class="rb-title overhidden">{{item.title}}</p>
                            <p class="rb-author overhidden">{{item.details}}</p>
                            <div class="rb-footer overhidden">
                                <div class="rb-footer-praise">
                                    <span class="overhidden">{{item.click}}</span>
                                </div>
                                <div class="rb-footer-comment">
                                    <span class="overhidden">{{item.appraised}}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
         </div>   
    </div>
</template>
<script>
   import head from '../sub/head.vue';
   import nav from '../sub/nav.vue';
   export default {
      data(){
        return {
           list:[]
        }
      },
      methods:{
         getlist(){
            this.$http.get("getfl").then(result=>{
               this.list=result.body;
            })
         }
      },
      created(){
         this.getlist();
      },
      components:{
         "head-box":head,
         "nav-box":nav
      }
    }
</script>
<style>
   div.dis{
      margin-top:110px;
      display:flex;
      justify-content:space-between;
   }
   img.mui-media-object.mui-pull-left{
      max-width: 130px;
      height: 172.25px;
   }
   /*全部列表*/
   div.ls-body.pull_up_more{
       background:#fff;
       margin-bottom:55px;
   }
   .ls-body {
        width: 100%;
    }
    div {
        display: block;
    }
    .ls-body ul li {
        width: 100%;
        border-bottom: 1px solid #d0d0d0;
        display: list-item;
        text-align: -webkit-match-parent;
    }
    .ls-body .box {
        padding: .5rem;
    }
    .clearfix, .clx {
        *zoom: 1;
    }
    .ls-body .box .left-box {
        float: left;
        width: 7.6rem;
        height: 4.09rem;
        overflow: hidden;
    }
    .ls-body .box .left-box img {
        outline: 0;
        width: 100%;
        display: block;
    }
    .ls-body .box .right-box {
        height: 4.09rem;
        padding: 0 0 0 8.2rem;
        position: relative;
    }
    .ls-body .box .right-box .rb-title {
        font-size: 1rem;
        color: #333;
        line-height: 1.2rem;
    }
    .overhidden {
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    .ls-body .box .right-box .rb-author {
        font-size: .8rem;
        color: #bfbfbf;
        padding-top: .1rem;
    }
    .ls-body .box .right-box .rb-footer {
        position: absolute;
        bottom: 0;
        line-height: .8rem;
    }
    .ls-body .box .right-box .rb-footer .rb-footer-praise {
        width: 4.2rem;
        margin-right: .6rem;
    }
    .ls-body .box .right-box .rb-footer div {
        float: left;
    }
    .ls-body .box .right-box .rb-footer .rb-footer-praise span {
        background: url(../../img/list/icon-praise_6818bfb.png) no-repeat 0 0;
        background-size: .8rem;
        line-height: 1;
        padding-left: .9rem;
    }
    .ls-body .box .right-box .rb-footer span {
        display: inline-block;
        width: 3.6rem;
        font-size: .8rem;
        color: #bfbfbf;
        padding-top: 2px;
    }
    .ls-body .box .right-box .rb-footer div {
        float: left;
    }
    .ls-body .box .right-box .rb-footer .rb-footer-comment span {
        background: url(../../img/list/icon-comment_a2d3b4c.png) no-repeat 0 0;
        background-size: .9rem;
        line-height: 1;
        padding-left: 1.1rem;
    }
    .clearfix:after, .clx:after {
        content: '\0020';
        display: block;
        height: 0;
        clear: both;
        visibility: hidden;
    }
</style>