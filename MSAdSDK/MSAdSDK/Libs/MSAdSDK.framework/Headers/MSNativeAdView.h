//
//  MSNativeAdView.h
//  MSAdSDK
//
//  Created by yang on 2019/8/30.
//  Copyright © 2019 yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MSNativeAdView : UIView
/**
 *  显示布局
 */
@property (assign, nonatomic)MSNativeAdType nativeAdViewShowType;


/**
 *  构造方法
 *  详解：frame - banner 展示的位置和大小
 */
- (instancetype)initWithFrame:(CGRect)frame adModel:(id<MSFeedAdMeta>)adModel;

+ (CGFloat)heightCellForRow:(id<MSFeedAdMeta>)adModel nativeAdViewShowType:(MSNativeAdType)nativeAdViewShowType;

@end
