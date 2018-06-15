const { mysql } = require('../qcloud')
module.exports = async ctx => {
    const { id } = ctx.request.query

    const detail = await mysql('books')
        .select('books.*', 'cSessionInfo.user_info')
        .join('cSessionInfo', 'books.openid', 'cSessionInfo.open_id')
        .where('id', id)
        .first()
    // 由于查询出来是一个只有一个元素的[]可以使用.first()
    // 直接使用联表查询由于是mysql数据库,存储的json 都是字符串
    // 而且 里面的数据太多了需要筛选一部分
    const info = JSON.parse(detail.user_info)
    ctx.state.data = Object.assign({}, detail, {
        user_info: {
            name: info.nickName,
            image: info.avatarUrl
        }
    })
    await mysql('books')
        .where('id', id)
        .increment('count', 1)
}
