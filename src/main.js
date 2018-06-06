import Vue from 'vue'
import App from './App'

// 生成环境关掉提示
Vue.config.productionTip = false

// 手动挂载到页面
const app = new Vue(App)
app.$mount()

// 配置小程序显示界面
export default {
  config: {
    pages: ['pages/books/main', 'pages/me/main', '^pages/comments/main'],
    'window': {
      'backgroundTextStyle': 'light',
      'navigationBarBackgroundColor': '#fff',
      'navigationBarTitleText': 'WeChat',
      'navigationBarTextStyle': 'black'
    }
  }
}
