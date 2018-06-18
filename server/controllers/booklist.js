const { mysql } = require('../qcloud')

module.exports = async ctx => {
    // 使用联表查询,查出nickname
    // 添加分页(触底刷新)
    const { page, openId } = ctx.request.query
    const size = 10
    const mysqlSelect = mysql('books')
        .select('books.*', 'cSessionInfo.user_info')
        .join('cSessionInfo', 'books.openid', 'cSessionInfo.open_id')
    let books
    // 在一个接口中添加两个功能的用法
    if (openId) {
        // 根据openId 过滤
        books = await mysqlSelect.where('openid', openId)
    } else {
        // 全部图书 分页
        books = await mysqlSelect
            .limit(size)
            .offset(Number(page) * size)
            .orderBy('books.id', 'desc')
    }

    // select `books`.*, `cSessionInfo`.`user_info` from `books` inner join
    // `cSessionInfo` on `books`.`openid` = `cSessionInfo`.`open_id` order by
    // `books`.`id` desc limit ?
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
