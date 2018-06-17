// const https = require('https')
const { mysql } = require('../qcloud')

module.exports = async ctx => {
    const { bookid, comment, openId, location, phone } = ctx.request.body
    console.log('111111111')
    console.log({ bookid, comment, openId, location, phone })
    // console.log(isbn)
    // console.log(openid)
    try {
        const bookInfo = await mysql('books')
            .select()
            .where('id', bookid)
        console.log(bookInfo)

        if (bookInfo) {
            const res = await mysql('comments').insert({
                bookid: bookid,
                comment: comment,
                openid: openId,
                location: location,
                phone: phone
            })
            if (res.length) {
                ctx.state = {
                    code: 0,
                    data: {
                        msg: 'success'
                    }
                }
                return
            }
        }
    } catch (e) {
        ctx.state = {
            code: -1,
            data: {
                msg: '失败 ' + e.sqlMessage
            }
        }
    }
}
