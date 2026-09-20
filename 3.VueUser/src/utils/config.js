const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '新闻资讯管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'房屋资讯',
							url:'/index/newsList'
						},
					]
				},
				{
					name: '房源信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'房源信息',
							url:'/index/fangyuanxinxiList'
						},
					]
				},
				{
					name: '论坛交流',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'攻略信息',
							url:'/index/forumList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "基于Springboot+vue的租房系统"
        } 
    }
}
export default config
