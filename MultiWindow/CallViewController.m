//
//  CallViewController.m
//  MultiWindow
//
//  Created by i on 2023/8/5.
//

#import "CallViewController.h"
#import "AppDelegate.h"

@interface CallViewController ()
@property (nonatomic, assign) BOOL shouldDealloc; // 标志位

@end

@implementation CallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 初始化标志位
    self.shouldDealloc = NO;
}

- (IBAction)hangUp:(UIButton *)sender {
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    appDelegate.floatingWindow = nil;
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)minisize:(UIButton *)sender {
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [appDelegate initFloatWindow];
    [self dismissViewControllerAnimated:YES completion:nil];
}



- (void)dealloc {
    // 在 dealloc 中移除对自身的强引用
    if (!self.shouldDealloc) {
        // 取消 dealloc
        return;
    }
    NSLog(@"==== CallViewController =====");
}

@end
