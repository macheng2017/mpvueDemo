import Koa from 'koa'
import koaLog from './middleware/koa-logger'
const app = new Koa()
// 使用自己实现的,计时器推算时间

app.use(koaLog)
app.use(async (ctx, next) => {
  console.log(ctx)
  ctx.body = '1'
  next()
  ctx.body += '2'
})
app.use(async (ctx, next) => {
  ctx.body += '3'
  next()
  ctx.body += '4'
})
app.use(async (ctx, next) => {
  ctx.body += '5'
  next()
  ctx.body += '6'
})
app.listen('3000')
