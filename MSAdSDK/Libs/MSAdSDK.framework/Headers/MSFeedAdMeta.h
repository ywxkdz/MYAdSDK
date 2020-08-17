//
//  MSFeedAdMeta.h
//  MSAdSDKDev
//
//  Created by Liumaos on 2020/7/31.
//  Copyright © 2020 Adxdata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSFeedVideoView.h"

#ifndef MSFeedAdMeta_h
#define MSFeedAdMeta_h

typedef NS_ENUM(NSInteger, MSCreativeType) {
    MSCreativeTypeImage = 1, // 图片
    MSCreativeTypeVideo = 2, // 视频
    MSCreativeTypeSmallImage = 11, // 小图
    MSCreativeTypeLargeImage = 12, // 大图
    MSCreativeTypeThreeImage = 13, // 三图
    MSCreativeTypePrerender = 100000, // 预渲染
};

@protocol MSFeedAdMeta <NSObject>

/** 类型 */
-(MSCreativeType) metaCreative_type;

/** 标题 */
-(NSString*) metaTitle;
/** 内容 */
-(NSString*) metaContent;

/** 广告图标 */
-(NSString*) metaIcon;
/** 平台Logo */
-(NSString*) metaLogo;
/** 缩略图 */
-(NSString*) metaThumbnailUrl;

/** 主图 */
-(NSString*) metaMainImgaeUrl;
/** 主图图片尺寸 */
-(CGSize)    metaMainImageSize;


/** 多图信息流 */
-(NSArray<NSString*>*) metaMoreImages;


/** 信息流视频 */
-(NSString*) metaVideoUrl;

/** 视频时长 */
-(NSTimeInterval) metaVideoDuration;

-(NSInteger)metaTarget_type;//广告交互类型(0:网页跳转,1:下载) 默认 值:0


#pragma mark- Action

- (MSFeedVideoView *)registerMediaView:(UIView *)container
                             clickView:(UIView *)clickView
                                    vc:(UIViewController *)vc;

- (void)attachAd:(UIView *)view;

@end

#endif /* MSFeedAdMeta_h */
