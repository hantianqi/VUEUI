<template>
    <div class="app-register">
        <header>
            <mt-header title="注册快看" class="head-back">
                <router-link to="/home/logInfo" slot="left">
                    <mt-button icon="back"></mt-button>
                </router-link>
            </mt-header>
        </header>
        <div class="div-body-img">
            <img src="../../img/login/1819824a3932cf44b0f5fb22e3a8b51a.png">
        </div>
        <div class="div-input">
            <input type="text" placeholder="请输入手机号">
            <input type="text" placeholder="请输入账号">
            <input type="text" placeholder="请输入密码">
            <input type="submit" value="注册" class="input-back">
        </div>
    </div>
</template>
<script>
    
</script>
<style>
    div.app-register{
        background:#FDE23D;
        padding-bottom:210px;
    }
    div.app-register div{
        align-items: center;
        display:flex;
        flex-direction: column;
    }
    
</style>