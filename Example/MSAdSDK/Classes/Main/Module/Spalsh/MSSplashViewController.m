//
//  MSSplashViewController.m
//  MSAdSDKDev
//
//  Created by Liumaos on 2020/7/17.
//  Copyright © 2020 XiXiHaha. All rights reserved.
//

#import "MSSplashViewController.h"

@interface MSSplashViewController ()<MSSplashAdDelegate>

@property (weak, nonatomic) IBOutlet UITextField *pidTextField;

@property (weak, nonatomic) IBOutlet UILabel *instructionsLabel;

@property(nonatomic,strong) MSSplashAd *splash;


@end

@implementation MSSplashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pidTextField.placeholder = self.defaultPid;
    self.pidTextField.text        = self.defaultPid;
    
}

- (IBAction)clickLoadFull:(UIButton*)sender{
    
    MSSplashAd *splash = [[MSSplashAd alloc]init];
    self.splash     = splash;
    splash.delegate = self;
    NSString *pid   = self.pidTextField.text.length ? self.pidTextField.text:self.defaultPid;
    
    [self.splash loadAdAndShowSplashAd:pid];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [splash cancel];
    });
}

- (IBAction)clickLoadHalf:(UIButton*)sender{
    
    MSSplashAd *splash = [[MSSplashAd alloc]init];
    self.splash = splash;
    splash.delegate   = self;
    NSString *pid   = self.pidTextField.text.length ? self.pidTextField.text:self.defaultPid;
    splash.bottomView = [self bottomView];
    
    [self.splash loadAdAndShowSplashAd:pid];
    
}

-(UIView *)bottomView{
    
    CGFloat screenWidth  = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    UIView * bottomView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight * 0.25)];
    bottomView.backgroundColor = UIColor.whiteColor;
    
    UIImage *image = [UIImage imageNamed:@"logo"];
    UIImageView *logoView = [[UIImageView alloc] initWithImage:image];
    //    logoView.contentMode =  UIViewContentModeCenter;
    CGFloat width  = 114;
    CGFloat height = 40;
    logoView.frame = CGRectMake((screenWidth - width) / 2, (screenHeight * 0.25 - height) / 2, width, height) ;
    [bottomView addSubview:logoView];
    
    return bottomView;
}


#pragma mark- <MSSplashAdDelegate>

- (void)msSplashClicked:(MSSplashAd *)splashAd {
    
}

- (void)msSplashClosed:(MSSplashAd *)splashAd {
    
}

- (void)msSplashDetailClosed:(MSSplashAd *)splashAd {
    
}

- (void)msSplashError:(MSSplashAd *)splashAd withError:(NSError *)error {
    
}

- (void)msSplashLoaded:(MSSplashAd *)splashAd {
    
}

-(void)msSplashPresent:(MSSplashAd *)splashAd{
    
}

- (void)msSplashShow:(MSSplashAd *)splashAd {
    
}

- (void)msSplashSkip:(MSSplashAd *)splashAd {
    
}

- (void)msSplashWillClosed:(MSSplashAd *)splashAd {
    
}

- (void)msSplashStartLoaded:(MSSplashAd *)splashAd {
    
}

@end
