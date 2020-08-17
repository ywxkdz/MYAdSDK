//
//  MSRewardVideoViewController.m
//  MSAdSDKDev
//
//  Created by Liumaos on 2020/7/20.
//  Copyright © 2020 XiXiHaha. All rights reserved.
//

#import "MSRewardVideoViewController.h"


@interface MSRewardVideoViewController ()<MSRewardVideoAdDelegate>

@property(nonatomic,strong) MSRewardVideoAd *rewardAd;


@property (weak, nonatomic) IBOutlet UIButton    * loadBtn;
@property (weak, nonatomic) IBOutlet UITextField * defaultPidTextF;
@property (weak, nonatomic) IBOutlet UIButton    * playBtn;
@property (weak, nonatomic) IBOutlet UISwitch    * portraitSwitch;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end

@implementation MSRewardVideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.defaultPidTextF.text        = self.defaultPid;
    self.defaultPidTextF.placeholder = self.defaultPid;

}

- (IBAction)loadAd:(id)sender {
    
    self.statusLabel.text = @"正在加载....";
    self.playBtn.enabled  = NO;

    self.rewardAd = [[MSRewardVideoAd alloc] initWithCurController:self];
    self.rewardAd.delegate = self;
    NSString *pid = self.defaultPidTextF.text ?:self.defaultPid;
    
    [self.rewardAd loadRewardVideoAd:pid];
    
}

- (IBAction)playAd:(id)sender {
    
    [self.rewardAd showRewardVideoAd];

}

#pragma mark- MSRewardVideoAdDelegate

- (void)msRewardVideoLoaded:(MSRewardVideoAd *)msRewardVideoAd {
    
    self.playBtn.enabled  = YES;
    self.statusLabel.text = @"广告已加载";
    
}
- (void)msRewardVideoCached:(MSRewardVideoAd *)msRewardVideoAd {
        
    self.playBtn.enabled  = YES;
    self.statusLabel.text = @"广告视频已缓存";
    
}

- (void)msRewardVideoClicked:(MSRewardVideoAd *)msRewardVideoAd {
    
}

- (void)msRewardVideoClosed:(MSRewardVideoAd *)msRewardVideoAd {
    
}

- (void)msRewardVideoError:(MSRewardVideoAd *)msRewardVideoAd error:(NSError *)error {
    
}

- (void)msRewardVideoFinish:(MSRewardVideoAd *)msRewardVideoAd {
    
}



- (void)msRewardVideoReward:(MSRewardVideoAd *)msRewardVideoAd {
    
}

- (void)msRewardVideoShow:(MSRewardVideoAd *)msRewardVideoAd {
    
}

- (void)msRewardVideoWillShow:(MSRewardVideoAd *)msRewardVideoAd {
    
}

@end
