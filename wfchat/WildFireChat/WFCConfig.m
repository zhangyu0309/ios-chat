//
//  Config.m
//  Wildfire Chat
//
//  Created by WF Chat on 2017/10/21.
//  Copyright © 2017年 WildFireChat. All rights reserved.
//

#import "WFCConfig.h"

//IM服务HOST，域名或者IP，注意不能带http头，也不能带端口。
NSString *IM_SERVER_HOST = @"155.94.204.181";


// App Server默认使用的是8888端口，替换为自己部署的服务时需要注意端口别填错了，使用http访问appserver时，需要确保appserver的配置文件中的wfc.all_client_support_ssl参数为false
// 正式商用时，建议用https，确保token安全，可以使用nginx反向代理添加对ssl的支持。需要确保appserver的配置文件中的wfc.all_client_support_ssl参数为true
// 如果您使用web-chat，由于最新chrome浏览器的策略，只有使用https才能带上cookie访问appserver的接口，所以就必须使
// wfc.all_client_support_ssl为tue，所以客户端也必须使用https的应用服务地址

//NSString *APP_SERVER_ADDRESS = @"http://wildfirechat.net:8888";
NSString *APP_SERVER_ADDRESS = @"http://155.94.204.181";

//组织通讯录服务地址，如果没有部署，可以设置为nil
NSString *ORG_SERVER_ADDRESS = nil;

// Turn服务配置，用户音视频通话功能，详情参考 https://docs.wildfirechat.net/webrtc/
// 我们提供的服务仅供用户测试和体验，为了保证测试可用，我们会不定期的更改密码。
// 上线时请一定要切换成你们自己的服务。
NSString *ICE_ADDRESS = @"turn:101.200.232.7:3478";
NSString *ICE_USERNAME = @"iturn";
NSString *ICE_PASSWORD = @"Inspu9961234,";

//用户协议和隐私政策，上线前请替换成您自己的内容
NSString *USER_PRIVACY_URL = @"https://wildfirechat.net/wildfirechat_user_privacy.html";
NSString *USER_AGREEMENT_URL = @"https://wildfirechat.net/wildfirechat_user_agreement.html";

NSString *FILE_TRANSFER_ID = @"wfc_file_transfer";

//如果想要关掉工作台，把WORK_PLATFORM_URL设置为nil就可以了
//NSString *WORK_PLATFORM_URL = nil;
NSString *WORK_PLATFORM_URL = nil;

//有2种登录方式，手机号码+验证码登录 和 手机号码+密码登录。
//这个开关是否优先密码登录
BOOL Prefer_Password_Login = YES;

//发送日志命令，当发送此文本消息时，会把协议栈日志发送到当前会话中，为空时关闭此功能。
NSString *Send_Log_Command = @"*#marslog#";
