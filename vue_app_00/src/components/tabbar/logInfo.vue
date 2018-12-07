<template>
    <div class="app-logInfo">
        <header>
            <mt-header title="登录/注册快看" class="head-back">
                <router-link to="/home/login" slot="left">
                    <mt-button icon="back"></mt-button>
                </router-link>
            </mt-header>
        </header>
        <div class="div-body-img">
            <img src="../../img/login/1819824a3932cf44b0f5fb22e3a8b51a.png">
        </div>
        <div class="div-input">
            <input type="text" placeholder="请输入账号">
            <input type="text" placeholder="请输入密码">
            <input type="submit" value="登录" class="input-back">
        </div>
        <div class="div-other">
            <p><span>—————</span><span class="span-padd">其他方式登录</span><span>—————</span></p>
            <p class="span-font">
                <a href="#"><span class="mui-icon mui-icon-qq"></span></a>
                <a href="#"><span class="mui-icon mui-icon-weixin"></span></a>
                <a href="#"><span class="mui-icon mui-icon-weibo"></span></a>
            </p>
        </div>
        <div class="div-zc">
            <router-link to="/home/register">注册</router-link>
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
    div.div-zc>a{
        color:#000;
        padding-top:40px;
    }
    div.app-logInfo{
        padding-bottom:110px;
    }
    div.app-logInfo div{
        align-items: center;
        display:flex;
        flex-direction: column;
    }
    header>.head-back{
        padding-top:10px;
    }
    div.app-logInfo,header>.head-back{
        background:#FDE23D;
        color:#000;
        font-size:17px;
    }
    div.div-body-img{
        margin-top:40px;
    }
    div.div-input input{
        width:80%;
        border-radius:50px;
    }
    div.div-input input.input-back{
        background:#FA8605;
        border:0;
        font-size:15px;
    }
    div.div-other>p{
        margin-top:20px;
        color:#000;
        font-size:15px;
    }
    div.div-other>p span.span-padd{
        padding:0 10px;
    }
    p.span-font a span{
        color:#000;
        font-size:40px;
        margin:0 20px;
    }
</style>