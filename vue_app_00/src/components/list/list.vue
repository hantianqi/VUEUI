<template>
    <div class="app-list">
        <ul class="mui-table-view">
			<li class="mui-table-view-cell mui-media" v-for="item in list" :key="item.id">
				<a href="javascript:;">
					<img class="mui-media-object mui-pull-left img-height" :src="item.img_url">
					<div class="mui-media-body">
						{{item.title}}
					    <p class='mui-ellipsis'>{{item.ctime}}</p>
					</div>
				</a>
			</li>
        </ul>
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
                this.$http.get("list").then(result=>{
                    this.list=result.body;
                })
            }
        },
        created(){
            this.getlist();
        },
    }
</script>
<style>
    ul li a>img.mui-media-object.mui-pull-left.img-height{
        height:70px;
    }
</style>