<template>
 <div class="app-container">
    <!--2.容器显示不同组件-->
    <router-view></router-view>
    <!--3.底部导航栏-->
    <nav class="mui-bar mui-bar-tab"  style="z-index:100;">
		<router-link class="mui-tab-item" to="/home">
			<span class="mui-icon mui-icon-home"></span>
			<span class="mui-tab-label">首页</span>
		</router-link>
		<router-link class="mui-tab-item" to="/tj">
			<span class="mui-icon mui-icon-pengyouquan"></span>
			<span class="mui-tab-label">发现</span>
		</router-link>
		<router-link class="mui-tab-item" to="/home/list">
			<span class="mui-icon mui-icon-chat"></span>
			<span class="mui-tab-label">世界</span>
		</router-link>
		<router-link class="mui-tab-item" to="/home/login">
			<span class="mui-icon mui-icon-contact"></span>
			<span class="mui-tab-label">我的</span>
		</router-link>
	</nav>
 </div>
</template>
<style>
</style>
<script>
	export default {
        data(){
            return {}
		}
	}
</script>