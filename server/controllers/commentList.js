// const https = require('https')
const { mysql } = require('../qcloud')

module.exports = async ctx => {
    const { bookid } = ctx.request.body
    try {
        if (bookid) {
            const comments = await mysql('comments')
                .select('comments.*', 'cSessionInfo.user_info as userInfo')
                .join('cSessionInfo', 'comments.openid', 'cSessionInfo.open_id')
                .where('bookid', bookid)
            // console.log('--------------------')
            // console.log(comments)
            if (comments.length) {
                ctx.state = {
                    code: 0,
                    data: {
                        list: comments.map(v => {
                            const info = JSON.parse(v.userInfo)
                            return Object.assign({}, v, {
                                title: info.nickName,
                                image: info.avatarUrl
                            })
                        }),
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
