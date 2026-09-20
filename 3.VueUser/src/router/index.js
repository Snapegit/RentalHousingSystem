import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import newsList from '@/views/pages/news/list'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import fangdongList from '@/views/pages/fangdong/list'
import fangdongDetail from '@/views/pages/fangdong/formModel'
import fangdongAdd from '@/views/pages/fangdong/formAdd'
import fangwuleixingList from '@/views/pages/fangwuleixing/list'
import fangwuleixingDetail from '@/views/pages/fangwuleixing/formModel'
import fangwuleixingAdd from '@/views/pages/fangwuleixing/formAdd'
import diquList from '@/views/pages/diqu/list'
import diquDetail from '@/views/pages/diqu/formModel'
import diquAdd from '@/views/pages/diqu/formAdd'
import fangyuanxinxiList from '@/views/pages/fangyuanxinxi/list'
import fangyuanxinxiDetail from '@/views/pages/fangyuanxinxi/formModel'
import fangyuanxinxiAdd from '@/views/pages/fangyuanxinxi/formAdd'
import storeupList from '@/views/pages/storeup/list'
import yuyuekanfangList from '@/views/pages/yuyuekanfang/list'
import yuyuekanfangDetail from '@/views/pages/yuyuekanfang/formModel'
import yuyuekanfangAdd from '@/views/pages/yuyuekanfang/formAdd'
import fangwuzulinList from '@/views/pages/fangwuzulin/list'
import fangwuzulinDetail from '@/views/pages/fangwuzulin/formModel'
import fangwuzulinAdd from '@/views/pages/fangwuzulin/formAdd'
import forumList from '@/views/pages/forum/list'
import menuList from '@/views/pages/menu/list'
import menuDetail from '@/views/pages/menu/formModel'
import menuAdd from '@/views/pages/menu/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'newsList',
			component: newsList
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'fangdongList',
			component: fangdongList
		}, {
			path: 'fangdongDetail',
			component: fangdongDetail
		}, {
			path: 'fangdongAdd',
			component: fangdongAdd
		}
		, {
			path: 'fangwuleixingList',
			component: fangwuleixingList
		}, {
			path: 'fangwuleixingDetail',
			component: fangwuleixingDetail
		}, {
			path: 'fangwuleixingAdd',
			component: fangwuleixingAdd
		}
		, {
			path: 'diquList',
			component: diquList
		}, {
			path: 'diquDetail',
			component: diquDetail
		}, {
			path: 'diquAdd',
			component: diquAdd
		}
		, {
			path: 'fangyuanxinxiList',
			component: fangyuanxinxiList
		}, {
			path: 'fangyuanxinxiDetail',
			component: fangyuanxinxiDetail
		}, {
			path: 'fangyuanxinxiAdd',
			component: fangyuanxinxiAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'yuyuekanfangList',
			component: yuyuekanfangList
		}, {
			path: 'yuyuekanfangDetail',
			component: yuyuekanfangDetail
		}, {
			path: 'yuyuekanfangAdd',
			component: yuyuekanfangAdd
		}
		, {
			path: 'fangwuzulinList',
			component: fangwuzulinList
		}, {
			path: 'fangwuzulinDetail',
			component: fangwuzulinDetail
		}, {
			path: 'fangwuzulinAdd',
			component: fangwuzulinAdd
		}
		, {
			path: 'forumList',
			component: forumList
		}
		, {
			path: 'menuList',
			component: menuList
		}, {
			path: 'menuDetail',
			component: menuDetail
		}, {
			path: 'menuAdd',
			component: menuAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
