# Maintenance

一个简易的维护页面

<div align="center">
  <a href="https://github.com/admgo/admgo">
    <img src="https://github.com/admgo/maintenance/blob/46b3f06b1c06407c202495e23456548f894510e4/pic/main.png" alt="Logo" width="780" height="530">
  </a>
</div>

## 简介

在进行停机服务时，使用此服务可以提供一个简易友好的维护页面

#### 参数

提供一些变量来自定义你的维护页面

| 参数             | 描述                                                          |
| ---------------- | ------------------------------------------------------------- |
| -title           | 标签页标题，默认值：_喔！_                                  |
| -headline        | 一个醒目的主题，默认值：_系统正在维护..._                   |
| -maintenancetime | 维护时间，默认值：_2025年1月1日 22:00 - 2025年1月2日 02:00_ |
| -mail            | 用于联系的邮箱，默认值：_example@examplecom_                |

## Docker

快速启动

`docker run -p 80:80 admgo/maintenance`

使用参数:

`docker run -title 'Oops' -headline 'Application is maintenance' -mail 'it-support@domain.com' -maintenancetime '2025.1.1 00:00 - 2025.1.2 00:00' -p 80:80 admgo/maintenance`
