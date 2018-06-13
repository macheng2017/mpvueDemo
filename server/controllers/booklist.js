const { mysql } = require('../qcloud')

module.exports = async ctx => {
    // 使用联表查询,查出nickname
    const books = await mysql('books')
        .select('books.*', 'cSessionInfo.user_info')
        .join('cSessionInfo', 'books.openid', 'cSessionInfo.open_id')
        .orderBy('books.id', 'desc')

    ctx.state.data = {
        // 查询出来cSessionInfo(左联查询) 是一个比较大的对象,需要做下映射
        list: books.map(v => {
            const info = JSON.parse(v.user_info)
            return Object.assign({}, v, {
                user_info: {
                    nickName: info.nickName
                }
            })
        })
    }
}
