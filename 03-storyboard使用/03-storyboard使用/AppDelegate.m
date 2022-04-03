//
//  AppDelegate.m
//  03-storyboard使用
//
//  Created by zxc on 2022/4/2.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //1-创建Window窗体
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor=[UIColor whiteColor];


    //2-创建TabBarController
    UITabBarController *tb=[[UITabBarController alloc]init];

    //3-加载4个Storyboard
    UIStoryboard *homeSB=[UIStoryboard storyboardWithName:@"Home" bundle:nil];
    UIStoryboard *messageSB=[UIStoryboard storyboardWithName:@"Message" bundle:nil];
    UIStoryboard *discoverSB=[UIStoryboard storyboardWithName:@"Discover" bundle:nil];
    UIStoryboard *profileSB=[UIStoryboard storyboardWithName:@"Profile" bundle:nil];
    
    //4-创建并将4个Storyboard添加到TabBarController
    tb.viewControllers=@[homeSB.instantiateInitialViewController,
                         messageSB.instantiateInitialViewController,
                         discoverSB.instantiateInitialViewController,
                         profileSB.instantiateInitialViewController];
    //5-设置根控制器
    self.window.rootViewController=tb;
    
    //6-添加并设置4个TabBarItem
    UITabBar *tabBar = tb.tabBar;
      
    UITabBarItem *tabBarItem1 = [tabBar.items objectAtIndex:0];
    UITabBarItem *tabBarItem2 = [tabBar.items objectAtIndex:1];
    UITabBarItem *tabBarItem3 = [tabBar.items objectAtIndex:2];
    UITabBarItem *tabBarItem4 = [tabBar.items objectAtIndex:3];
    tabBarItem1.title=@"首页";
    tabBarItem1.image=[UIImage imageNamed:@"home"];
    
      
    tabBarItem2.title=@"消息";
    tabBarItem2.image=[UIImage imageNamed:@"message"];
   
      
    tabBarItem3.title=@"广场";
    tabBarItem3.image=[UIImage imageNamed:@"discover"];

      
    tabBarItem4.title=@"我";
    tabBarItem4.image=[UIImage imageNamed:@"profile"];
   
    
    //设置选中的tabitem，也可以使用selectedViewController
    //tab.selectedIndex = 2;
    //7-显示Window
    [self.window makeKeyAndVisible];

    return YES;
}


#pragma mark - UISceneSession lifecycle

//
//- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
//    // Called when a new scene session is being created.
//    // Use this method to select a configuration to create the new scene with.
//    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
//}
//
//
//- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
//    // Called when the user discards a scene session.
//    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//}


@end
