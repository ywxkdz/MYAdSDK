//
//  MSInterstitialViewController.m
//  MSAdSDKDev
//
//  Created by Liumaos on 2020/7/23.
//  Copyright © 2020 Adxdata. All rights reserved.
//

#import "MSInterstitialViewController.h"

@interface MSInterstitialViewController ()<MSInterstitialDelegate>

@property (weak, nonatomic) IBOutlet UITextField *defaultPidTF;

@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@property(nonatomic,strong) MSInterstitialAd *interstitialAd;

@property (weak, nonatomic) IBOutlet UIButton *showAdBtn;

@end

@implementation MSInterstitialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.showAdBtn.enabled = NO;
    self.defaultPidTF.text = self.defaultPid;
    self.statusLabel.text = @"";
    
}

- (IBAction)loadAd:(UIButton *)sender {
    
    self.showAdBtn.enabled = NO;
    self.statusLabel.text = @"Loading";
    self.interstitialAd = [[MSInterstitialAd alloc]initWithCurController:self];
    self.interstitialAd.delegate = self;
    NSString *pid = self.defaultPidTF.text.length ? self.defaultPidTF.text : self.defaultPid;
    [self.interstitialAd loadAd:pid];
}

- (IBAction)showAd:(UIButton *)sender {
    
    [self.interstitialAd showAd];
}

#pragma mark- Delegate

- (void)msInterstitialLoaded:(MSInterstitialAd *)msInterstitialAd{
    self.showAdBtn.enabled = YES;
    self.statusLabel.text = @"Loaded";
}

- (void)msInterstitialError:(MSInterstitialAd *)msInterstitialAd
                      error:(NSError *)error{
    
    self.statusLabel.text = @"Error";

    
}

- (void)msInterstitialShow:(MSInterstitialAd *)msInterstitialAd{
    
}

- (void)msInterstitialClosed:(MSInterstitialAd *)msInterstitialAd{
    
}

- (void)msInterstitialClicked:(MSInterstitialAd *)msInterstitialAd{
    
}

- (void)msInterstitialDetailClosed:(MSInterstitialAd *)msInterstitialAd{
    
}


@end
