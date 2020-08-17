//
//  MSSplashAd.h
//  MSAdSDK
//  开屏广告
//  Created by yang on 2019/8/13.
//  Copyright © 2019 yang. All rights reserved.
//


#import "MSBaseAd.h"
#import "MSSplashAdDelegate.h"


NS_ASSUME_NONNULL_BEGIN

@interface MSSplashAd : MSBaseAd

/**
 *  委托对象
 */
@property (nonatomic, weak) id<MSSplashAdDelegate> delegate;

/**
 * 自定义底部视图
 */
@property (nonatomic, strong) UIView *bottomView;

 /** 自定义跳过控件 */
@property (nonatomic, strong) UIView *skipView;

/** 广告是否正在显示 */
@property (nonatomic, assign,getter=isAdShow) BOOL adShow;

/** 广告展示时间 */
@property (nonatomic, assign) NSInteger showTime;

//加载并显示
- (void) loadAdAndShowSplashAd:(NSString *)pid;

//加载
- (void) loadSplashAd:(NSString *)pid;

//显示
- (void) showSplashAd;

//取消加载
-(void) cancel;

@end

NS_ASSUME_NONNULL_END
