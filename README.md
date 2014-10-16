ZCCrashMessage
==============
//版本说明 iOS研究院 305044955
/*获取崩溃信息 
 注：如果你的程序加入了友盟模块，请使用友盟的，此类会与友盟冲突，因为他也实现了
 在程序初始化的时候进行初始化，当程序闪退时候，截获崩溃信息
//示例代码
  ZCCrashMessage*message=[ZCCrashMessage shareManager];
 //设置程序崩溃时候，会调用ZCCrashMessage里面的UncaughtExceptionHandler函数
 NSArray*array=@[@"11"];
 [array objectAtIndex:3];
 */
