//
//  ZCCrashMessage.m
//  demo001
//
//  Created by ZhangCheng on 14-5-2.
//  Copyright (c) 2014年 张诚. All rights reserved.
//

#import "ZCCrashMessage.h"

@implementation ZCCrashMessage
static ZCCrashMessage*manager=nil;
+(id)shareManager{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager=[[ZCCrashMessage alloc]init];
          NSSetUncaughtExceptionHandler (&UncaughtExceptionHandler);
    });
    return manager;

}
//函数指针
void UncaughtExceptionHandler(NSException *exception) {
    NSArray *arr = [exception callStackSymbols];//得到当前调用栈信息
    NSString *reason = [exception reason];//非常重要，就是崩溃的原因
    NSString *name = [exception name];//异常类型
    
    
   // NSString *crashLogInfo = [NSString stringWithFormat:@"exception type : %@ \n crash reason : %@ \n call stack info : %@", name, reason, arr];

    NSLog(@"如果你的程序加入了友盟模块，请使用友盟的，此类会与友盟冲突，因为友盟也实现了\n 在这里需要进行记录，然后程序下次启动时候，把崩溃信息发送到服务器上~exception type : %@ \n crash reason : %@ \n call stack info : %@", name, reason, arr);
}

@end
