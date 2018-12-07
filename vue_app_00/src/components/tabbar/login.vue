<template>
    <div class="app-login">
        <div class="header">
            <div class="head-img">
                <div class="div-margin">
                    <router-link to="/home/logInfo"><img src="../../img/login/ico-face_7c653b4.png"></router-link>
                </div>
                <div class="div-font"><router-link to="/home/logInfo" class="link-color">登录</router-link></div>
                <button class="btn-border">签到领积分</button>
            </div>
        </div>
        <div class="div-body">
            <ul class="ul-dis ul-bor">
                <li>
                    <span class="mui-icon-extra mui-icon-extra-gift"></span>
                    <div>
                        <p class="p-title">积分市集</p>
                        <p>好礼免费换</p>
                    </div>
                </li>
                <li>
                    <span class="mui-icon-extra mui-icon-extra-card"></span>
                    <div>
                        <p class="p-title">我的钱包</p>
                        <p>私房小金库</p>
                    </div>
                </li>
            </ul>
        </div>
        <!--列表-->
        <div>
            <ul class="mui-table-view ul-bor">
                <li class="mui-table-view-cell">
                    <a class="mui-navigate-right"><span class="mui-icon mui-icon-chatbubble"></span>我的消息</a>
                </li>
                <li class="mui-table-view-cell">
                    <a class="mui-navigate-right"><span class="mui-icon-extra mui-icon-extra-gold"></span>付费会员</a>
                </li>
                <li class="mui-table-view-cell">
                    <a class="mui-navigate-right"><span class="mui-icon-extra mui-icon-extra-class"></span>我的频道</a>
                </li>
                <li class="mui-table-view-cell">
                    <a class="mui-navigate-right"><span class="mui-icon-extra mui-icon-extra-heart"></span>我的关注</a>
                </li>
                <li class="mui-table-view-cell">
                    <a class="mui-navigate-right"><span class="mui-icon mui-icon-star"></span>我的收藏</a>
                </li>
                <li class="mui-table-view-cell">
                    <a class="mui-navigate-right"><span class="mui-icon-extra mui-icon-extra-outline"></span>浏览历史</a>
                </li>
            </ul>
        </div>
        <div>
            <ul class="mui-table-view ul-bor">
                <li class="mui-table-view-cell">
                    <a class="mui-navigate-right"><span class="mui-icon-extra mui-icon-extra-grech"></span>游戏中心</a>
                </li>
                <li class="mui-table-view-cell">
                    <a class="mui-navigate-right"><span class="mui-icon mui-icon-home"></span>快看商城</a>
                </li>
                <li class="mui-table-view-cell">
                    <a class="mui-navigate-right"><span class="mui-icon-extra mui-icon-extra-order"></span>快看卡片</a>
                </li>
            </ul>
        </div>
        <div>
            <ul class="mui-table-view ul-bor">
                <li class="mui-table-view-cell">
                    <a class="mui-navigate-right"><span class="mui-icon-extra mui-icon-extra-calendar"></span>今日更新</a>
                </li>
            </ul>
        </div>
        <div class="div-bottom">
            <ul class="mui-table-view ul-bor">
                <li class="mui-table-view-cell">
                    <a class="mui-navigate-right"><span class="mui-icon mui-icon-gear"></span>设置</a>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
    export default {
        data(){
            return {}
        }
    }
</script>
<style>
    .div-font>.link-color{
        color:#000;
    }
    ul{
        list-style:none;
    }
    div.app-login{
        background:#fff;
    }
    div.header,div.head-img{
        height:200px;
        background-size:100%;
    }
    div.header{
        background:url(../../img/login/search_bg_8535b70.png);
        border-bottom:3px solid #F7F9FA;
    }
    div.head-img{
        background:url(../../img/login/search_bg2_e0bf5f7.png);
    }
    div.head-img{
        align-items: center;
        display:flex;
        flex-direction: column;
    }
    div.div-margin{
        padding-top:30px;
    }
    div.div-margin>img{
        width:60px;
    }
    div.div-font{
        padding:3px 0;
    }
    button.btn-border{
        font-size:15px;
        border:0;
        border-radius:50px;
        background:#FF9F00;
        color:#fff;
    }
    /*列表 */
    ul.ul-bor{
        border-bottom:5px solid #F7F9FA;
    }
    ul.ul-dis,ul.ul-dis li{
        display:flex;
    }
    ul.ul-dis>li{
        padding-left:20px;
    }
    ul.ul-dis>li+li{
        border-left:1px solid #ddd;
    }
    ul.ul-dis li{
        width:50%;
        padding-top:10px;
    }
    ul.ul-dis li>div p{
        margin-left:10px;
    }
    ul.ul-dis li>div>p.p-title{
        font-size:19px;
        padding-top:5px;
        margin-bottom:0;
        color:#000;
        font-weight:bold;
    }
    a.mui-navigate-right>span{
        padding-right:10px;
    }
    div.div-bottom{
        margin-bottom:50px;
    }
</style>