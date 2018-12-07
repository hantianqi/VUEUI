<template>
    <div class="app-news">
        <header class="head">
            <router-link to="/tj"><div class="bd Js_btn_goback"></div></router-link> 
        </header>
        <div class="div-width">
            <img src="http://127.0.0.1:3000/img/list/7wHcTdr3T.webp-w750.jpg">
        </div>
        <div class="ft">
            <div class="ft-title">
                <span class="overhidden">黑夜有所斯</span>
            </div>
            <div class="ft-content clearfix">
                <div class="ft-content-follow">
                    <span class="overhidden">145万人关注</span>
                </div>
                <div class="info clearfix">
                    <div class="ft-content-praise">
                        <span class="overhidden">220万</span>
                    </div>
                    <div class="ft-content-message">
                        <span class="overhidden">6万</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="wd-body">
            <ul class="mui-table-view">
                <li class="mui-table-view-cell mui-media" v-for="item in list" :key="item.id">
                    <router-link to="/home/newslist" class="a-width">
                        <img class="mui-pull-left" :src="item.pic">
                        <div class="mui-media-body">
                            {{item.title}}
                            <p class='mui-ellipsis'>
                                <span class="sp-left">{{item.time}}更新</span>
                                <span class="sp-right"><img src="../../img/list/icon-praise_6818bfb.png">{{item.click}}</span>
                            </p>
                        </div>
                    </router-link>
                </li>
            </ul>
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
                this.$http.get("getnews").then(result=>{
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
    div.app-news{
        padding-bottom:50px;
    }
    div.app-news>header.head div.bd.Js_btn_goback{
        width: 2rem;
        height: 2rem;
        position: absolute;
        background: url(../../img/news/icon-back2_61f67ea.png) no-repeat center /0.8rem rgba(0,0,0,.6);
        border-radius: 60px;
        left: .8rem;
        top: 1rem;
        z-index:10;
    }
    div.div-width{
        margin-top:-5px;
    }
    div.div-width>img{
        width:100%;
    }
    div.ft {
        width: 100%;
        position: absolute;
        top: 180px;
        background:rgba(0,0,0,.5);
    }
    .ft .ft-title {
        line-height: 1;
    }
    .ft .ft-title span {
        width: 100%;
        display: inline-block;
        font-size: 1rem;
        color: #fff;
        box-sizing: border-box;
        padding: 0 .6rem;
    }
    .overhidden {
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    .ft .ft-content {
        padding: 8px 0;
    }
    .ft .ft-content div {
        float: left;
    }
    .ft .ft-content .ft-content-follow span {
        width: 8.9rem;
        padding-left: .6rem;
        display: block;
    }
    .ft .ft-content span {
        display: inline-block;
        color: #d0cfd0;
    }
    .ft .ft-content .info {
        float: right;
        height: 1.2rem;
    }
    .ft .ft-content .ft-content-praise {
        padding: 0rem .5rem;
        height: 1.2rem;
        line-height: 1.3rem;
    }
    .ft .ft-content .ft-content-praise span {
        padding: 0 0 0 1.2rem;
        background: url(../../img/list/icon-praise_6818bfb.png) no-repeat 0 0;
        background-size: .9rem;
        font-size:15px;
        color:#fff;
    }
    .ft .ft-content .ft-content-message {
        padding-right: .4rem;
        height: 1.2rem;
        line-height: 1.3rem;
    }
    .ft .ft-content .ft-content-message span {
        padding: 0 0 0 1.2rem;
        background: url(../../img/list/icon-comment_a2d3b4c.png) no-repeat 0 0;
        background-size: .9rem;
        font-size:15px;
        color:#fff;
    }
    .wd-body{
        margin-top:-5px;
    }
    .a-width>.mui-pull-left{
        width:120px;
        margin-right:5px;
    }
    p.mui-ellipsis{
        padding-top:10px;
    }
    p.mui-ellipsis span{
        font-size:15px;
    }
    p.mui-ellipsis span.sp-right{
        position:relative;
        left:80px;
    }
    p.mui-ellipsis span.sp-right>img{
        width:20px;
    }
</style>