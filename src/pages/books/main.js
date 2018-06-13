import Vue from 'vue'
import App from './index'

// 生成环境关掉提示
Vue.config.productionTip = false

// 手动挂载到页面
const app = new Vue(App)
app.$mount()

// 配置小程序显示界面
// 添加下拉刷新功能
// https://developers.weixin.qq.com/miniprogram/dev/framework/config.html
// https://developers.weixin.qq.com/miniprogram/dev/api/pulldown.html
export default {
  config: {
    enablePullDownRefresh: true,
    navigationBarTitleText: '图书列表',
    navigationBarTextStyle: 'light'
  }
}
