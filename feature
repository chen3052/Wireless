整合ubralla,思科的网络安全系统。
clearair快速分析网络干扰
整合dnac，dnac结合了tac技术，做到快速记录定位问题。


Bridge 网络：两个有限网络用无线网络过wbg
Repeat 网络：又一个ap没有连接有限的只做转发
DS 网络：有线网络那段就是ds
mesh网络：


wlan的模式：
local： 中心转发模式，所有包都走到wlc。也会发点包检查信号
flexconnect： 即支持ap直接转发，又支持中心转发。也会发点包检查信号
monitor： 主要工作是检查信号强度
rogue detector： 把自己伪装成client到处登陆ap，检查是否有非法ap加入公司网络，主要是通知wlc他检查到结果，然后让wlc决定。
sniffer： 专业的空口抓包。
bridge：
bridge+flex：
se-connect：
sensor：

无线瘦wifi架构中是分层的认证的，ISE server是做认证服务器的，下接wlc，再接ap，上层挂了，下层能支持住。
flexconnect 配置模式是针对wlan的。一个ap可以有多个wlan，一个wlan走flexconnect，另外一个走local是完全可以的。所以ap可以同时支持local和flexconnect。但是需要映射到不同的vlan去。
首先要在wlc增加一个wlan为flexconnect模式。配置wlc和ap之间的交换机支持对应的vlan。当wlc把wlan下发到了ap上，去ap上enable vlan。map对应的vlan到制定的wlan即可。
