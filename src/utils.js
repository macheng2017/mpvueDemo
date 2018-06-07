//  工具函数
import config from './config'
// 为了能使用 async await 把wx.request 封装下
export function get(url) {
  return new Promise((resolve, reject) => {
    wx.request({
      url: config.host + url,
      success: function(res) {
        if (res.data.code === 0) {
          resolve(res.data.data)
        } else {
          reject(res.data)
        }
      }
    })
  })
}

export function showSuccess(text) {
  wx.showToast({
    title: text,
    icon: 'success'
  })
}
