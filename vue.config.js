module.exports = {
  devServer: {
    port: 80 // 更改端口为 80
  },
  publicPath: process.env.NODE_ENV === 'production' ? '/' : '/'
};
