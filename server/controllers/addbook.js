const R = require('ramda')
const https = require('https')

// add books info
// step:
// 1. fetch douban info
// 2. insert database

// https://developers.douban.com/wiki/?title=book_v2#get_isbn_book

// GET  https://api.douban.com/v2/book/isbn/:name
module.exports = async ctx => {
  const { isbn, openid } = ctx.request.body
  console.log(isbn)
  console.log(openid)
  if (isbn && openid) {
    let url = `https://api.douban.com/v2/book/isbn/${isbn}`
    const bookInfo = await getJson(url)
    // 转换json: 将豆瓣获取的信息,转换为自己需要的信息
    const rate = bookInfo.rating.average
    const { title, image, alt, publisher, summary, price } = bookInfo
    const tags = bookInfo.tags
      .map(v => {
        return `${v.title} ${v.count}`
      })
      .join(',')
    const author = bookInfo.author.join(',')
    console.log({
      rate,
      title,
      image,
      alt,
      publisher,
      summary,
      price,
      tags,
      author
    })
    // let result = R.pick([
    //   'rating',
    //   'title',
    //   'image',
    //   'alt',
    //   'publisher',
    //   'summary',
    //   'price',
    //   'author'
    // ])
    // console.log(result(bookInfo))
  }
}
// 用的功能不多,不需要第三方库,仅用nodejs自带的即可
function getJson(url) {
  return new Promise((resolve, reject) => {
    // 不能直接返回结果,它是流的形式
    https.get(url, res => {
      let urlData = ''
      res.on('data', data => {
        urlData += data
      })
      res.on('end', data => {
        const bookInfo = JSON.parse(urlData)
        if (bookInfo.title) {
          resolve(bookInfo)
        }
        reject(bookInfo)
      })
    })
  })
}
