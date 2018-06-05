import Koa from 'koa'
import koaLogger from './middleware/koa-logger'
import Router from 'koa-router'
// 引入koa-router
const router = new Router()
const app = new Koa()

// 使用自己实现的,计时器推算时间

app.use(koaLogger)
// app.use(async (ctx, next) => {
//   console.log(ctx)
//   ctx.body = '1'
//   next()
//   ctx.body += '2'
// })
// app.use(async (ctx, next) => {
//   ctx.body += '3'
//   next()
//   ctx.body += '4'
// })
// app.use(async (ctx, next) => {
//   ctx.body += '5'
//   next()
//   ctx.body += '6'
// })

router.get('/', (ctx, next) => {
  ctx.body = '哈哈哈'
})
router.get('/xxx', (ctx, next) => {
  ctx.body = '你好'
})
app.use(router.routes())
app.use(router.allowedMethods())
app.listen('3000')
