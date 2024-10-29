import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import qiye from '@/views/modules/qiye/list'
    import news from '@/views/modules/news/list'
    import gangweileixing from '@/views/modules/gangweileixing/list'
    import discussgangweixinxi from '@/views/modules/discussgangweixinxi/list'
    import gangweixinxi from '@/views/modules/gangweixinxi/list'
    import yonghu from '@/views/modules/yonghu/list'
    import yingpinzhuangkuang from '@/views/modules/yingpinzhuangkuang/list'
    import pingtaifeiyong from '@/views/modules/pingtaifeiyong/list'
    import storeup from '@/views/modules/storeup/list'
    import yingpinxinxi from '@/views/modules/yingpinxinxi/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/qiye',
        name: '企业',
        component: qiye
      }
          ,{
	path: '/news',
        name: '新闻资讯',
        component: news
      }
          ,{
	path: '/gangweileixing',
        name: '岗位类型',
        component: gangweileixing
      }
          ,{
	path: '/discussgangweixinxi',
        name: '岗位信息评论',
        component: discussgangweixinxi
      }
          ,{
	path: '/gangweixinxi',
        name: '岗位信息',
        component: gangweixinxi
      }
          ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
	path: '/yingpinzhuangkuang',
        name: '应聘状况',
        component: yingpinzhuangkuang
      }
          ,{
	path: '/pingtaifeiyong',
        name: '平台费用',
        component: pingtaifeiyong
      }
          ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
	path: '/yingpinxinxi',
        name: '应聘信息',
        component: yingpinxinxi
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
