import 'dart:async';

import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

class AppText {
  AppText(this.locale);

  final Locale locale;

  static AppText of(BuildContext context) => Localizations.of(context, AppText);

  static Map<String, Map<String, String>> _localizedValues = {
    "zh": {
      // 通用
      "yes": "是",
      "no": "否",
      "close": "关闭",
      "netError": "网络开小差了哦~",
      "refresh": "刷新",
      "addFav": "收藏",
      "share": "分享",
      "openByOther": "其他方式打开",
      "copyUrl": "复制URL",
      "alreadyCopyUrl": "已复制链接",
      "retry": "重试",
      "loadFail": "加载失败！",
      "cancel": "取消",
      "certain": "确定",
      "unknown": "未知",
      "appName": "ArchitectureSamples(Flutter)",

      // 主页
      "read": "闲读",
      "collect": "收藏",
      "setting": "设置",
      "about": "关于",
      "retryToExit": "再按一次退出App！",

      // 闲读
      "xiandu": "科技资讯",
      "xianduApps": "趣味软件/游戏",
      "xianduImrich": "装备党",
      "xianduFunny": "草根新闻",
      "xianduAndroid": "Android",
      "xianduDie": "创业新闻",
      "xianduThink": "独立思想",
      "xianduIos": "iOS",
      "xianduBlog": "团队博客",
      "xianduFail": "科技资讯获取失败！",
      "xianduAppsFail": "趣味软件/游戏获取失败！",
      "xianduImrichFail": "装备党获取失败！",
      "xianduFunnyFail": "草根新闻获取失败！",
      "xianduAndroidFail": "Android获取失败！",
      "xianduDieFail": "创业新闻获取失败！",
      "xianduThinkFail": "独立思想获取失败！",
      "xianduIosFail": "iOS获取失败！",
      "xianduBlogFail": "团队博客获取失败！",

      // 收藏
      "listEmpty": "列表为空",

      // 设置
      "moduleControl": "模块管理",
      "caculating": "正在计算...",
      "commonUse": "通用",
      "themeColor": "主题色",
      "chooseTheme": "选择主题色",
      "openOrCloseModule": "启用/关闭模块",
      "clearCache": "清除缓存",
      "colorLapisBlue": "青石色",
      "colorPaleDogWood": "山茱萸",
      "colorGreenery": "绿篱",
      "colorPrimroseYellow": "樱草黄",
      "colorFlame": "烈焰红",
      "colorIslandParadise": "天堂岛",
      "colorKale": "甘蓝",
      "colorPinkYarrow": "粉蓍草",
      "colorNiagara": "尼亚加拉",
      "colorNone": "丢雷老母",

      // 关于
      "overview": "概述",
      "programHome": "项目主页",
      "feedback": "意见反馈",
      "checkUpdate": "检查更新",
      "alreadyNew": "已是最新版本！",
      "shareApp": "分享应用",
      "shareAppUrl":
      "来不及了，赶急上车！https://github.com/Crazy-MT/FlutterArchitectureSamples",
      "thanks": "感谢",
      "connectMe": "联系我",
      "zhihuPage": "Crazy-MT",
      "zhihuName": "• @Crazy-MT",
    },
  };

  /// 通用
  String get yes => _localizedValues[locale.languageCode]["yes"];

  String get no => _localizedValues[locale.languageCode]["no"];

  String get close => _localizedValues[locale.languageCode]["close"];

  String get netError => _localizedValues[locale.languageCode]["netError"];

  String get refresh => _localizedValues[locale.languageCode]["refresh"];

  String get addFav => _localizedValues[locale.languageCode]["addFav"];

  String get retry => _localizedValues[locale.languageCode]["retry"];

  String get copyUrl => _localizedValues[locale.languageCode]["copyUrl"];

  String get loadFail => _localizedValues[locale.languageCode]["loadFail"];

  String get cancel => _localizedValues[locale.languageCode]["cancel"];

  String get certain => _localizedValues[locale.languageCode]["certain"];

  String get unknown => _localizedValues[locale.languageCode]["unknown"];

  String get appName => _localizedValues[locale.languageCode]["appName"];

  String get alreadyCopyUrl =>
      _localizedValues[locale.languageCode]["alreadyCopyUrl"];

  String get openByOther =>
      _localizedValues[locale.languageCode]["openByOther"];

  String get read => _localizedValues[locale.languageCode]["read"];

  String get setting => _localizedValues[locale.languageCode]["setting"];

  String get collect => _localizedValues[locale.languageCode]["collect"];

  String get about => _localizedValues[locale.languageCode]["about"];

  String get retryToExit =>
      _localizedValues[locale.languageCode]["retryToExit"];

  String get share => _localizedValues[locale.languageCode]["share"];

  /// 闲读
  String get xiandu => _localizedValues[locale.languageCode]["xiandu"];

  String get xianduApps => _localizedValues[locale.languageCode]["xianduApps"];

  String get xianduImrich =>
      _localizedValues[locale.languageCode]["xianduImrich"];

  String get xianduFunny =>
      _localizedValues[locale.languageCode]["xianduFunny"];

  String get xianduAndroid =>
      _localizedValues[locale.languageCode]["xianduAndroid"];

  String get xianduDie => _localizedValues[locale.languageCode]["xianduDie"];

  String get xianduThink =>
      _localizedValues[locale.languageCode]["xianduThink"];

  String get xianduIos => _localizedValues[locale.languageCode]["xianduIos"];

  String get xianduBlog => _localizedValues[locale.languageCode]["xianduBlog"];

  String get xianduFail => _localizedValues[locale.languageCode]["xianduFail"];

  String get xianduAppsFail =>
      _localizedValues[locale.languageCode]["xianduAppsFail"];

  String get xianduImrichFail =>
      _localizedValues[locale.languageCode]["xianduImrichFail"];

  String get xianduFunnyFail =>
      _localizedValues[locale.languageCode]["xianduFunnyFail"];

  String get xianduAndroidFail =>
      _localizedValues[locale.languageCode]["xianduAndroidFail"];

  String get xianduDieFail =>
      _localizedValues[locale.languageCode]["xianduDieFail"];

  String get xianduThinkFail =>
      _localizedValues[locale.languageCode]["xianduThinkFail"];

  String get xianduIosFail =>
      _localizedValues[locale.languageCode]["xianduIosFail"];

  String get xianduBlogFail =>
      _localizedValues[locale.languageCode]["xianduBlogFail"];

  String get listEmpty => _localizedValues[locale.languageCode]["listEmpty"];

  /// 设置
  String get moduleControl =>
      _localizedValues[locale.languageCode]["moduleControl"];

  String get caculating => _localizedValues[locale.languageCode]["caculating"];

  String get commonUse => _localizedValues[locale.languageCode]["commonUse"];

  String get themeColor => _localizedValues[locale.languageCode]["themeColor"];

  String get chooseTheme =>
      _localizedValues[locale.languageCode]["chooseTheme"];

  String get openOrCloseModule =>
      _localizedValues[locale.languageCode]["openOrCloseModule"];

  String get clearCache => _localizedValues[locale.languageCode]["clearCache"];

  String get colorLapisBlue =>
      _localizedValues[locale.languageCode]["colorLapisBlue"];

  String get colorPaleDogWood =>
      _localizedValues[locale.languageCode]["colorPaleDogWood"];

  String get colorGreenery =>
      _localizedValues[locale.languageCode]["colorGreenery"];

  String get colorPrimroseYellow =>
      _localizedValues[locale.languageCode]["colorPrimroseYellow"];

  String get colorFlame => _localizedValues[locale.languageCode]["colorFlame"];

  String get colorIslandParadise =>
      _localizedValues[locale.languageCode]["colorIslandParadise"];

  String get colorKale => _localizedValues[locale.languageCode]["colorKale"];

  String get colorPinkYarrow =>
      _localizedValues[locale.languageCode]["colorPinkYarrow"];

  String get colorNiagara =>
      _localizedValues[locale.languageCode]["colorNiagara"];

  String get colorNone => _localizedValues[locale.languageCode]["colorNone"];

  /// 关于
  String get overview => _localizedValues[locale.languageCode]["overview"];

  String get programHome =>
      _localizedValues[locale.languageCode]["programHome"];

  String get feedback => _localizedValues[locale.languageCode]["feedback"];

  String get shareApp => _localizedValues[locale.languageCode]["shareApp"];

  String get connectMe => _localizedValues[locale.languageCode]["connectMe"];

  String get zhihuPage => _localizedValues[locale.languageCode]["zhihuPage"];

  String get zhihuName => _localizedValues[locale.languageCode]["zhihuName"];

  String get shareAppUrl =>
      _localizedValues[locale.languageCode]["shareAppUrl"];
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppText> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ["zh"].contains(locale.languageCode);

  @override
  Future<AppText> load(Locale locale) =>
      SynchronousFuture<AppText>(AppText(locale));

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;

  static AppLocalizationsDelegate delegate = const AppLocalizationsDelegate();
}
