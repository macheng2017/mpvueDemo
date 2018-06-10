//  工具函数
import config from './config'
// 为了能使用 async await 把wx.request 封装下
export function get(url, data) {
  request(url, 'GET', data)
}
export function post(url, data) {
  request(url, 'POST', data)
}
function request(url, method, data) {
  return new Promise((resolve, reject) => {
    wx.request({
      data: data,
      method: method,
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
