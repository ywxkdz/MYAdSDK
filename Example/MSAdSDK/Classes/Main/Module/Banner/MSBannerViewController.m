//
//  MSBannerViewController.m
//  MSAdSDKDev
//
//  Created by Liumaos on 2020/7/21.
//  Copyright © 2020 Adxdata. All rights reserved.
//

#import "MSBannerViewController.h"

@interface MSBannerViewController ()<MSBannerViewDelegate>

@property (weak, nonatomic) IBOutlet UIView *containView;

@property (weak, nonatomic) IBOutlet UITextField *defaultPidTF;

@property (weak, nonatomic) IBOutlet UISwitch *showCloseSwitch;

@property(nonatomic,strong) MSBannerView *bannerView;

@property (weak, nonatomic) IBOutlet UIButton *showCloseBtn;


@end

@implementation MSBannerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.defaultPidTF.text = self.defaultPid;
    self.containView.layer.borderWidth = 0.5;
    self.containView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.containView.layer.cornerRadius    = 3;
    self.containView.layer.masksToBounds   = YES;
    
}
-(MSBannerView *)bannerView{
    if (!_bannerView) {
        _bannerView = [[MSBannerView alloc]initWithFrame:self.containView.bounds curController:self];
        [self.containView addSubview:_bannerView];
    }
    return _bannerView;
}
- (IBAction)showBannerAd:(id)sender {
    
    self.bannerView.showCloseBtn = self.showCloseSwitch.isOn;
    NSString *pid = self.defaultPidTF.text.length ? self.defaultPidTF.text : self.defaultPid;
    self.bannerView.delegate = self;
    [self.bannerView loadAdAndShow:self pid:pid];
}

- (IBAction)removeBannerAd:(id)sender {
    
    [self.bannerView dismiss];

}

- (IBAction)switchChanged:(UISwitch *)sender {
    
    self.showCloseBtn.selected = sender.isOn;
    
}

- (IBAction)showOrHideCloseBtn:(UIButton*)sender {
    
    sender.selected = !sender.selected;
    self.bannerView.showCloseBtn = !sender.selected;
    [self.showCloseSwitch setOn:!sender.selected animated:YES];
    
}
-(void)msBannerShow:(MSBannerView *)msBannerAd{
    
}
-(void)msBannerClosed:(MSBannerView *)msBannerAd{
    [self.bannerView dismiss];
    _bannerView = nil;
}
-(void)msBannerLoaded:(MSBannerView *)msBannerAd{
    
}
-(void)msBannerClicked:(MSBannerView *)msBannerAd{
    
}
-(void)msBannerDetailShow:(MSBannerView *)msBannerAd{
    
}
-(void)msBannerError:(MSBannerView *)msBannerAd error:(NSError *)error{
    
}
-(void)msBannerDetailClosed:(MSBannerView *)msBannerAd{
    
}
@end
