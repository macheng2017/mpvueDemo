import Vue from 'vue'
import App from './index'
const app = new Vue(App)
// 手动加载
app.$mount()

export default {
  config: {
    navigationBarTitleText: '任务清单'
  }
}
