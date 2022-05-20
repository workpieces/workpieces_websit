// 软件Model
class SoftwareModel {
  String title; // 软件名称
  String desc; // 软件描述
  String tips; // 温馨提示
  int status; // 软件状态 0：设计中 1： 已发布。2：研发中
  String logo; // 软件logo图片
  List<Packge> packages; //安装包
  SoftwareModel(
      this.title, this.desc, this.tips, this.status, this.logo, this.packages);
}

// 安装包Model
class Packge {
  String name; // 安装包名称
  String link; // 安装包地址
  Packge(this.name, this.link);
}

final softwares = [
  SoftwareModel(
    "etcdWp",
    "etcdWp是一款免费且支持Macos桌面的etcd客户端桌面。支持对etcd单机版和集群版键值存储做增删改查、集群资源查看、租约用户角色管理等操作。",
    "",
    1,
    "assets/images/etcd_image.png",
    [
      Packge("Apple Store 下载",
          "https://apps.apple.com/cn/app/etcdwp/id1617626187?mt=12"),
      Packge("DMG 下载", "https://github.com/workpieces/etcdWp/releases"),
    ],
  ),
  SoftwareModel(
    "MediaGB",
    "MediaGB是一个基于GB28181标准实现的网络视频平台，支持NAT穿透，支持海康、大华、宇视等品牌的IPC、NVR、DVR接入。支持rtsp/rtmp等视频推流、流转发到国标平台。",
    "（目前暂且无法下载安装，敬请期待。）",
    2,
    "assets/images/etcd_image.png",
    [
      Packge("AMD", ""),
      Packge("ARM", ""),
      Packge("Docker", ""),
    ],
  )
];
