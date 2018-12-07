<template>
    <mt-navbar v-model="selected" class="nav-mar">
            <mt-tab-item id="1">周一</mt-tab-item>
            <mt-tab-item id="2">周二</mt-tab-item>
            <mt-tab-item id="3">周三</mt-tab-item>
            <mt-tab-item id="4">周四</mt-tab-item>
            <mt-tab-item id="5">周五</mt-tab-item>
            <mt-tab-item id="6">周六</mt-tab-item>
            <mt-tab-item id="7">周日</mt-tab-item>
    </mt-navbar>
</template>
<script>
    export default {
        data(){
            return {selected:{}}
		}
	}
</script>
<style>
    .nav-mar a{
      color:#000;
      text-decoration:none;
    }
    .nav-mar a{
      color:#000;
      text-decoration:none;
    }
    .nav-mar{
      display:flex;
      justify-content:center;
      margin-top:45px
    }
</style>