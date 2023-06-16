import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Storeup from '../pages/storeup/list'
import AddrList from '../pages/shop-address/list'
import AddrAdd from '../pages/shop-address/addOrUpdate'
import Order from '../pages/shop-order/list'
import OrderConfirm from '../pages/shop-order/confirm'
import Cart from '../pages/shop-cart/list'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import yonghuList from '../pages/yonghu/list'
import yonghuDetail from '../pages/yonghu/detail'
import yonghuAdd from '../pages/yonghu/add'
import chushixinxiList from '../pages/chushixinxi/list'
import chushixinxiDetail from '../pages/chushixinxi/detail'
import chushixinxiAdd from '../pages/chushixinxi/add'
import chushifuwuList from '../pages/chushifuwu/list'
import chushifuwuDetail from '../pages/chushifuwu/detail'
import chushifuwuAdd from '../pages/chushifuwu/add'
import fuwudingdanList from '../pages/fuwudingdan/list'
import fuwudingdanDetail from '../pages/fuwudingdan/detail'
import fuwudingdanAdd from '../pages/fuwudingdan/add'
import caipinfenleiList from '../pages/caipinfenlei/list'
import caipinfenleiDetail from '../pages/caipinfenlei/detail'
import caipinfenleiAdd from '../pages/caipinfenlei/add'
import yuzhicaiList from '../pages/yuzhicai/list'
import yuzhicaiDetail from '../pages/yuzhicai/detail'
import yuzhicaiAdd from '../pages/yuzhicai/add'
import aboutusList from '../pages/aboutus/list'
import aboutusDetail from '../pages/aboutus/detail'
import aboutusAdd from '../pages/aboutus/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'storeup',
					component: Storeup
				},
                {
                    path: 'shop-address/list',
                    component: AddrList
                },
                {
                    path: 'shop-address/addOrUpdate',
                    component: AddrAdd
                },
				{
					path: 'shop-order/order',
					component: Order
				},
				{
					path: 'cart',
					component: Cart
				},
				{
					path: 'shop-order/orderConfirm',
					component: OrderConfirm
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'yonghu',
					component: yonghuList
				},
				{
					path: 'yonghuDetail',
					component: yonghuDetail
				},
				{
					path: 'yonghuAdd',
					component: yonghuAdd
				},
				{
					path: 'chushixinxi',
					component: chushixinxiList
				},
				{
					path: 'chushixinxiDetail',
					component: chushixinxiDetail
				},
				{
					path: 'chushixinxiAdd',
					component: chushixinxiAdd
				},
				{
					path: 'chushifuwu',
					component: chushifuwuList
				},
				{
					path: 'chushifuwuDetail',
					component: chushifuwuDetail
				},
				{
					path: 'chushifuwuAdd',
					component: chushifuwuAdd
				},
				{
					path: 'fuwudingdan',
					component: fuwudingdanList
				},
				{
					path: 'fuwudingdanDetail',
					component: fuwudingdanDetail
				},
				{
					path: 'fuwudingdanAdd',
					component: fuwudingdanAdd
				},
				{
					path: 'caipinfenlei',
					component: caipinfenleiList
				},
				{
					path: 'caipinfenleiDetail',
					component: caipinfenleiDetail
				},
				{
					path: 'caipinfenleiAdd',
					component: caipinfenleiAdd
				},
				{
					path: 'yuzhicai',
					component: yuzhicaiList
				},
				{
					path: 'yuzhicaiDetail',
					component: yuzhicaiDetail
				},
				{
					path: 'yuzhicaiAdd',
					component: yuzhicaiAdd
				},
				{
					path: 'aboutus',
					component: aboutusList
				},
				{
					path: 'aboutusDetail',
					component: aboutusDetail
				},
				{
					path: 'aboutusAdd',
					component: aboutusAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
