//
//  MSFeedVideoView.h
//  MSAdSDK
//
//  Created by zzq on 2020/2/27.
//  Copyright © 2020 yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSSDKDefines.h"

@protocol MSFeedVideoDelegate <NSObject>

@optional

- (void)msFeedVideoFinish;

- (void)msFeedVideoStart;

- (void)msFeedVideoPause;

- (void)msFeedVideoError:(NSError *)error;

@end

@interface MSFeedVideoView : UIView

@property (nonatomic, weak) id<MSFeedVideoDelegate> delegate;

/**
 * 播放视频
 */
- (void)play;

/**
 * 暂停视频
 */
- (void)pause;

/**
 * 静音
 */
- (void)mute;

/**
 * 取消静音
 */
- (void)unmute;

@end
