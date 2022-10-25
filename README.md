<div style="display:flex; flex-direction: column">
<img src="https://i2.hdslb.com/bfs/face/0b38f98c687ba8220860cc675cdbcbd05599a56e.jpg" style="align-items: flex-start;width: 300px;border-radius:80% 80% 80% 80%;" title="TSBread2960278" width=96px></img>
<img src="https://img.shields.io/github/stars/TSBread/acBar?style=plastic" style="align-items: center;justify-content: baseline" width=54px></img>
</div>

**版本：1.19.2 (按理说只要支持[`字形提供器space`](https://www.bilibili.com/read/cv15732133 "ctrl+f搜索:字形提供器space")的版本都可以用)**

### 演示视频

<a href="https://www.bilibili.com/video/BV1GT411P72M"><img src="http://i0.hdslb.com/bfs/archive/ea995f56ad67883862f74d3460e2b85adfbc8d09.jpg" width="508" title="点击跳转至演示视频"></a>

### 注意事项

- 使用时请先执行`function bar:load`以加载数据
- 占用`0 254~255 0`处作为解码器、强制加载`0 0`处确保实体以及解码器能被加载到、计分板前缀`acBar.`
- 已修复 👉~~这个版本的修改 bar 的 color 稍微有点问题 但是不大。按照 lore 的模板将 color 修改即可，否则切换一个玩家的 bar 颜色会同时更改全局玩家 bar 的颜色~~
- 关于 lore 的修改请以`res\assets\ui\textures\lang`内的图片为准。需要注意的是图片高度必须为 255，且图片左右两侧各有一个 alpha 很小的色块，目的是保持图片的宽度
