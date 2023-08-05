//
//  AppDelegate.m
//  MultiWindow
//
//  Created by i on 2023/8/5.
//

#import "AppDelegate.h"
#import "CallViewController.h"
#import "AudioIconViewController.h"

@interface AppDelegate ()

@property (strong, nonatomic) CallViewController *callVC;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UIViewController *rootViewController = [mainStoryboard instantiateInitialViewController];
    self.callVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"CallViewController"];
    self.callVC.modalPresentationStyle = UIModalPresentationFullScreen;
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)initFloatWindow {
    // 创建一个独立的悬浮窗口
    self.floatingWindow = [[UIWindow alloc] initWithFrame:CGRectMake(300, 300, 100, 100)];
    self.floatingWindow.backgroundColor = [UIColor redColor];
    self.floatingWindow.windowLevel = UIWindowLevelAlert + 1; // 确保位于其他视图之上
    
    // 设置悬浮窗口的根视图控制器
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AudioIconViewController *floatingViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"AudioIconViewController"];
    self.floatingWindow.rootViewController = floatingViewController;
    
    // 显示悬浮窗口
    [self.floatingWindow makeKeyAndVisible];
}

- (void)showCallViewController {
    [self.window.rootViewController presentViewController:self.callVC animated:YES completion:nil];
}

@end
