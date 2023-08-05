//
//  AudioIconViewController.m
//  MultiWindow
//
//  Created by i on 2023/8/5.
//

#import "AudioIconViewController.h"
#import "CallViewController.h"
#import "AppDelegate.h"

@interface AudioIconViewController ()

@end

@implementation AudioIconViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)showCallViewController:(UIButton *)sender {
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [appDelegate showCallViewController];
    appDelegate.floatingWindow = nil;
}

- (void)dealloc {
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
