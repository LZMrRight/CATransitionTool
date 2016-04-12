//
//  CATransitionTool.h
//  CATransitionToolDemo
//
//  Created by Mr.Right on 16/4/12.
//  Copyright © 2016年 lizheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>

typedef enum :NSInteger {
    Fade = 1,                   //淡入淡出
    Push,                       //推挤
    Reveal,                     //揭开
    MoveIn,                     //覆盖
    Cube,                       //立方体
    SuckEffect,                 //吮吸
    OglFlip,                    //翻转
    RippleEffect,               //波纹
    PageCurl,                   //翻页
    PageUnCurl,                 //反翻页
    CameraIrisHollowOpen,       //开镜头
    CameraIrisHollowClose,      //关镜头
    CurlDown,                   //下翻页
    CurlUp,                     //上翻页
    FlipFromLeft,               //左翻转
    FlipFromRight,              //右翻转

} AnimationType;

typedef void(^animation)();

@interface CATransitionTool : NSObject
@property(nonatomic,copy) NSString *subType;

+ (void)animationWithAnimationType:(AnimationType)animationType subType:(NSString *)subtypeString during:(NSTimeInterval)duration forView:(UIView *)animaView animation:(animation)block;
/**
 *  提交转场动画之前做相应动作
 *
 *  @param animationType 动画类型
 *  @param subtypeString 动画方向
 *  @param duration      持续时间
 *  @param animaView     动画作用对象
 */
- (void)animationWithAnimationType:(AnimationType)animationType subType:(NSString *)subtypeString during:(NSTimeInterval)duration forView:(UIView *)animaView;

@end
