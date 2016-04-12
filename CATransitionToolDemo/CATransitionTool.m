//
//  CATransitionTool.m
//  CATransitionToolDemo
//
//  Created by Mr.Right on 16/4/12.
//  Copyright © 2016年 lizheng. All rights reserved.
//

#import "CATransitionTool.h"

@interface CATransitionTool ()
@property(nonatomic,assign) NSTimeInterval duration;
@property(nonatomic,copy) animation block;

@end

@implementation CATransitionTool

+ (void)animationWithAnimationType:(AnimationType)animationType subType:(NSString *)subtypeString during:(NSTimeInterval)duration forView:(UIView *)animaView animation:(animation)block {    
}

- (void)animationWithAnimationType:(AnimationType)animationType subType:(NSString *)subtypeString during:(NSTimeInterval)duration forView:(UIView *)animaView {
    _duration = duration;
    
    switch (animationType) {
        case Fade:
            [self transitionWithType:kCATransitionFade WithSubtype:subtypeString ForView:animaView];
            break;
            
        case Push:
            [self transitionWithType:kCATransitionPush WithSubtype:subtypeString ForView:animaView];
            break;
            
        case Reveal:
            [self transitionWithType:kCATransitionReveal WithSubtype:subtypeString ForView:animaView];
            break;
            
        case MoveIn:
            [self transitionWithType:kCATransitionMoveIn WithSubtype:subtypeString ForView:animaView];
            break;
            
        case Cube:
            [self transitionWithType:@"cube" WithSubtype:subtypeString ForView:animaView];
            break;
            
        case SuckEffect:
            [self transitionWithType:@"suckEffect" WithSubtype:subtypeString ForView:animaView];
            break;
            
        case OglFlip:
            [self transitionWithType:@"oglFlip" WithSubtype:subtypeString ForView:animaView];
            break;
            
        case RippleEffect:
            [self transitionWithType:@"rippleEffect" WithSubtype:subtypeString ForView:animaView];
            break;
            
        case PageCurl:
            [self transitionWithType:@"pageCurl" WithSubtype:subtypeString ForView:animaView];
            break;
            
        case PageUnCurl:
            [self transitionWithType:@"pageUnCurl" WithSubtype:subtypeString ForView:animaView];
            break;
            
        case CameraIrisHollowOpen:
            [self transitionWithType:@"cameraIrisHollowOpen" WithSubtype:subtypeString ForView:animaView];
            break;
            
        case CameraIrisHollowClose:
            [self transitionWithType:@"cameraIrisHollowClose" WithSubtype:subtypeString ForView:animaView];
            break;
            
        case CurlDown:
            [self animationWithView:animaView WithAnimationTransition:UIViewAnimationTransitionCurlDown];
            break;
            
        case CurlUp:
            [self animationWithView:animaView WithAnimationTransition:UIViewAnimationTransitionCurlUp];
            break;
            
        case FlipFromLeft:
            [self animationWithView:animaView WithAnimationTransition:UIViewAnimationTransitionFlipFromLeft];
            break;
            
        case FlipFromRight:
            [self animationWithView:animaView WithAnimationTransition:UIViewAnimationTransitionFlipFromRight];
            break;
            
        default:
            break;
    }

}

#pragma CATransition动画实现
- (void) transitionWithType:(NSString *) type WithSubtype:(NSString *) subtype ForView : (UIView *) view {
    //创建CATransition对象
    CATransition *animation = [CATransition animation];
    
    //设置运动时间
    animation.duration = _duration;
    
    //设置运动type
    animation.type = type;
    if (subtype != nil) {
        //设置子类
        animation.subtype = subtype;
    }
    

    //设置运动速度
    animation.timingFunction = UIViewAnimationOptionCurveEaseInOut;
    
    [view.layer addAnimation:animation forKey:@"animation"];
}

#pragma UIView实现动画
- (void) animationWithView:(UIView *)view WithAnimationTransition:(UIViewAnimationTransition) transition
{
    [UIView animateWithDuration:_duration animations:^{
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:transition forView:view cache:YES];
    }];
}



@end
