//
//  AppDelegate.h
//  MultiWindow
//
//  Created by i on 2023/8/5.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow * window;
@property (nonatomic, strong) UIWindow *floatingWindow;

- (void)initFloatWindow;
- (void)showCallViewController;

@end

