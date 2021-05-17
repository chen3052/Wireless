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
monitor： 主要工作是检查信号强度，扫描ap，监控空气质量，连接ap
rogue detector： 把自己伪装成client到处登陆ap，检查是否有非法ap加入公司网络，主要是通知wlc他检查到结果，然后让wlc决定。
sniffer： 专业的空口抓包。
bridge：
bridge+flex：
se-connect：
sensor：

无线瘦wifi架构中是分层的认证的，ISE server是做认证服务器的就是802.1x，下接wlc有证书，再接ap，上层挂了，下层能支持住。
flexconnect配置，
1. 把ap模式改成flexconnect
2. flexconnect的配置是针对wlan的。一个ap可以有多个wlan，一个wlan走flexconnect，另外一个走local是完全可以的。所以ap可以同时支持local和flexconnect。但是需要映射到不同的vlan去。
3. 方法就是新建ssid，map vlan，然后到高级里面勾flex connect local switch
4. 然后到wlc上ap菜单下 flexconnect 面板下勾vlan 支持。 其实这里可以建立ap group来处理，比没个ap处理高效。
5. native vlan 填写
6. 点vlan map，可以看到新建的flex connect ssid和原来的local ssid。 flex connect绑定到你在交换机上加的给flexconnect的vlan，做法是先选ap specfic，然后填写对应vlan。 local ssid还是用native vlan
