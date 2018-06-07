# 原生小程序的文件目录

app.js 是项目的入口文件,应用全局处理逻辑
app.json 是全局配置
app.wxss ...

app.wxss 是 css 样式文件的一个仿品,多了个 rpx 在做移动端适配的时候使用 rpx 完美适配所有机型,小程序整个宽度为 750rpx,可以根据比例调试

project.config.json 项目配置文件 主要是为了区分前后端代码的文件夹在哪

## app.js

* 生命周期钩子函数
* 全局 getApp 函数获取实例
* 全局唯一

![img](./images/vue-music00015.png)

## app.json

* pages
* windows
* tabbar

https://developers.weixin.qq.com/miniprogram/dev/framework/config.html

pages : 指定小程序页面文件,第一个默认为首页,在使用 mpvue 的时候自动生成改文件

```js
{
  "pages": [
    "pages/index/index",
    "pages/logs/index"
  ],
  "window": {
    "navigationBarTitleText": "Demo"
  },
  "tabBar": {
    "list": [{
      "pagePath": "pages/index/index",
      "text": "首页"
    }, {
      "pagePath": "pages/logs/logs",
      "text": "日志"
    }]
  },
  "networkTimeout": {
    "request": 10000,
    "downloadFile": 10000
  },
  "debug": true
}
```

## 常用 api

* wx.request 发送请求
* wx.previewImage 预览图片
* wx.setStorage | getStorage 本地存储

![img](./images/vue-music00016.png)
![img](./images/vue-music00017.png)

## ES6 常用的代码片段

![img](./images/vue-music00018.png)
![img](./images/vue-music00019.png)
![img](./images/vue-music00020.png)
![img](./images/vue-music00022.png)

### 可以链式调用

![img](./images/vue-music00023.png)

## 数组去重使用 set 的特性

![img](./images/vue-music00024.png)
![img](./images/vue-music00025.png)

## 面试 淘宝首页到底用了多少种标签?

综合应用上面的片段

```js
// 获取所有标签元素
document.querySelectorAll('*')
// 展开为数组(原生nodelist)
[...document.querySelectorAll('*')]
// 遍历数组
[...document.querySelectorAll('*')].map(v => v.nodeName)
// 去重
new Set([...document.querySelectorAll('*')].map(v => v.nodeName)).seze
```

## 对象的遍历

![img](./images/vue-music00026.png)

## 对象合并(使用展开符)

```js
console.log({...obj1,..obj2,job:'fe', age:16})
```

## rpx 是什么

https://developers.weixin.qq.com/miniprogram/dev/framework/view/wxss.html

rpx 是一个响应式的设计单位一般是以 iphone6 为视觉标准使用 rpx 设计,在 iPhone6 中一个 1rpx = 0.5px

## 生命周期

小程序的生命周期有两种

* app
* page

![img](./images/vue-music00027.png)

![img](./images/vue-music00028.png)

每个页面都有 main.js 它的意思是, 使用的 app 是 index.js,
将其挂载到 vue 当中

```js
import Vue from 'vue'
import App from './index'

const app = new Vue(App)
app.$mount()
```

为什么 mpvue 中的 new Vue(App)可以挂载 网页?

这里面隐含了一个问题就是,通过 import app from './index'将网页导入进来的时候,是原来的网页吗? 是一堆 template JavaScript 以及 style 这些标签吗?
是否经过了框架层层处理?

https://segmentfault.com/q/1010000011723029

![img](./images/vue-music00029.png)

mpvue 推荐使用 vue 的声明周期,因为小程序在别的 web 端是没有周期的

![img](./images/vue-music00030.png)
![img](./images/vue-music00031.png)
![img](./images/vue-music00033.png)
![img](./images/vue-music00034.png)

## koa 是什么

![img](./images/vue-music00035.png)
![img](./images/vue-music00036.png)
![img](./images/vue-music00037.png)

洋葱圈模型(先进先出)

![img](./images/vue-music00038.png)

app.use 就是一个

![img](./images/vue-music00039.png)

执行顺序是 135642

## koa2 中间件是什么?

koa 的使用

npm init

npm i koa --save

## 腾讯云

![img](./images/vue-music00040.png)
![img](./images/vue-music00041.png)
![img](./images/vue-music00042.png)
![img](./images/vue-music00043.png)
![img](./images/vue-music00044.png)
![img](./images/vue-music00045.png)

## 本地如何搭建开发环境

https://cloud.tencent.com/document/product/619/12794

https://console.cloud.tencent.com/cam/capi

启动 mysql

docker start mysql

进入到数据库命令行

docker exec -it mysql mysql -uroot -p123456

create database cAuth;

在 server 文件夹中 npm install

服务器热更新
npm i nodemon -g

操作 mysql 数据库的库 knex

## 使用 mpvue 框架删除 src 目录

注意: 入口 App.vue 中 template 不写东西报错, con n't find for 加入一层 div 即可

或者不写 template 即可

app.json 是在 mpvue 中 main.js 中定义的

新建 pages 文件夹

main.js

## 自动修复 eslint 报错文件

"lint": "eslint --fix --ext .js,.vue src"
npm run lint

/_ eslint disable _/ 关闭 eslint 检查文件

## 初始化数据库

node tools/initdb.js

在前端中 添加
npm install wafer2-client-sdk --save

## sdk 登录功能实现

https://github.com/tencentyun/wafer2-client-sdk

与后端 server 微信给的 demo 是配套的

## 使用 pug 和 sass

npm i pug sass-loader node-sass -save-dev
