var fs = require('fs')

var jsonfile = require('jsonfile')
// 引入fs & jsonfils

var writeFilePath = './all_images_info.json'

var errorPathString = './error_files_data.json'

var readFilePath = './img/'
// 定义路径
const readFile = file => {
  return new Promise((resolve, reject) => {
    return fs.readdir(file, (err, data) => {
      if (err) {
        reject(err)
      } else {
        resolve(data)
      }
    })
  })
}
readFile(readFilePath)
  .then(data => {
    return data.map(v => {
      return Object.assign(
        {
          'src': v
        }
      )
    })
  })
  .then(data => {
    let result = {
      data: data
    }
    console.log(result)
  })

// fs.readdir(readFilePath, function(err, files) {
//   if (err) {
//     console.log('读取文件夹失败')
//     return
//   }
//   // 第一个bug，需要更改对应的字段，将markdown变为json
//   var jsonFiles = []
//   for (let i = 0; i < files.length; i++) {
//     if (files[i].includes('.jpg')) {
//       jsonFiles.push('"src"' + ':' + '"' + files[i] + '"')
//     }
//   }
//   var jsonList = []
//   var errorFiles = []
//   for (let i = 0; i < jsonFiles.length; i++) {
//     try {
//       var content = jsonFiles[i]
//       jsonList.push('{' + content + '}')
//     } catch (err) {
//       errorFiles.push(content)
//     }
//   }
//   console.log(jsonList)
//   jsonfile.writeFileSync(
//     writeFilePath,
//     "{'" + 'data' + "'" + ':' + '[' + jsonList + ']' + '}',
//     {
//       spaces: 2,
//       EOL: '\r\n'
//     }
//   )

//   jsonfile.writeFileSync(errorPathString, errorFiles, {
//     spaces: 2,
//     EOL: '\r\n'
//   })
// })
