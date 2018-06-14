const { mysql } = require('../qcloud')
module.exports = async ctx => {
    const { id } = ctx.request.query

    const detail = await mysql('books')
        .select('')
        .where('id', id)
        .first()
        // 由于查询出来是一个只有一个元素的[]可以使用.first()
    ctx.state.data = detail

    await mysql('books')
        .where('id', id)
        .increment('count', 1)
}
