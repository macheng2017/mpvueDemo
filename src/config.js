// 配置项
// const host = 'http://localhost:5757'
const host = 'https://i8zgr1tt.qcloud.la'

const config = {
  host,
  loginUrl: `${host}/weapp/login`,
  // 为解决上个版本sdk-client 没有openId问题自己调用下后端获取
  userUrl: `${host}/weapp/user`
}
export default config
