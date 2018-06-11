//  工具函数
import config from './config'
// 为了能使用 async await 把wx.request 封装下
export function get(url, data) {
  return request(url, 'GET', data)
}
export function post(url, data) {
  return request(url, 'POST', data)
}
function request(url, method, data) {
  return new Promise((resolve, reject) => {
    wx.request({
      data: data,
      method: method,
      url: config.host + url,
      success: function(res) {
        if (res.data.code === 0) {
          // console.log(res.data.data)
          resolve(res.data.data)
        } else {
          // 这样写道这里肯定不对
          showModal('添加失败', `${res.data.data.msg}`)
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

export function showModal(title, content) {
  wx.showModal({
    title,
    content,
    showCancel: false
  })
}
