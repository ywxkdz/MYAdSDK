//
//  MSVideoAdViewController.m
//  MSAdSDKDev
//
//  Created by Liumaos on 2020/7/23.
//  Copyright © 2020 Adxdata. All rights reserved.
//

#import "MSVideoAdViewController.h"

@interface MSVideoAdViewController ()<MSVideoAdDelegate>

@property (weak, nonatomic) IBOutlet UITextField *defaultPidTF;

@property (weak, nonatomic) IBOutlet UISwitch *muteSwitch;

@property (weak, nonatomic) IBOutlet UISlider *sizeSlider;

@property (weak, nonatomic) IBOutlet UIView *containView;

@property(nonatomic,strong) MSVideoAd *videoAd;


@end

@implementation MSVideoAdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.defaultPidTF.text = self.defaultPid;
    
    self.containView.layer.borderWidth   = 0.5;
    self.containView.layer.borderColor   = [UIColor lightGrayColor].CGColor;
    self.containView.layer.cornerRadius  = 2;
    self.containView.layer.masksToBounds = YES;
    
    [self loadAd];
}

-(void) loadAd{
    
    MSVideoAd *videoAd = [[MSVideoAd alloc]initWithFrame:self.containView.bounds
                                               presentVc:self];
    NSString *pid = self.defaultPidTF.text.length ? self.defaultPidTF.text : self.defaultPid;
    videoAd.delegate = self;
    [videoAd loadAdAndShowAd:pid];
    
    self.videoAd = videoAd;
    [self.containView addSubview:self.videoAd];

}

- (IBAction)playOrPauseAction:(UIButton *)sender {
    
    if (sender.selected) {
        [self.videoAd pauseVideo];
    }else{
        [self.videoAd playVideo];
    }
}


- (IBAction)changeFrame:(UISlider *)sender {
    
    CGFloat rate = sender.value;
    
    self.videoAd.frame = CGRectMake(0, 0,self.containView.bounds.size.width * rate , self.containView.bounds.size.height * rate);
    
}


#pragma mark- MSVideoAdDelegate

- (void)msVideoLoad:(MSVideoAd *)videoAd{
    
}

- (void)msVideoShow:(MSVideoAd *)videoAd{
    
}

- (void)msVideoError:(MSVideoAd *)videoAd
               error:(NSError *)error{
    
}

- (void)msVideoClick:(MSVideoAd *)videoAd{
    
}

- (void)msVideoCompletion:(MSVideoAd *)videoAd{
    
}


@end
