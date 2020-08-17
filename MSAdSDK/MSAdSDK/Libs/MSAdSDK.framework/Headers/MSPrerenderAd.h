//
//  MSPrerenderAd.h
//  MSAdSDK
//
//  Created by Liumaos on 2020/8/3.
//  Copyright © 2020 Adxdata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSPrerenderAdDelegate.h"
#import "MSADBaseObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface MSPrerenderAd :MSADBaseObject

/**
 *  委托对象
 */
@property (nonatomic, weak) id<MSPrerenderAdDelegate> delegate;

/**
 *  构造方法
 *  详解：controller - pid 控制器和广告id
 */
- (instancetype)initWithCurController:(UIViewController*)controller;

@end

NS_ASSUME_NONNULL_END
