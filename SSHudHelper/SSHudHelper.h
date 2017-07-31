//
//  SSHudHelper.h
//  SSHudHelperExample
//
//  Created by Vimin on 2017/7/28.
//  Copyright © 2017年 广州方鼎软件科技发展有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SSHudHelper : NSObject

/**
 *  单例
 */
+ (instancetype)defaultHelper;

#pragma mark - 文字提示

- (void)showMessage:(NSString *)message;

- (void)showMessage:(NSString *)message onView:(UIView *)view;

- (void)showMessage:(NSString *)message onView:(UIView *)view duration:(NSTimeInterval)duration;

#pragma mark - 显示成功

- (void)showSuccessWithMessage:(NSString *)message;

- (void)showSuccessWithMessage:(NSString *)message onView:(UIView *)view;

- (void)showSuccessWithMessage:(NSString *)message onView:(UIView *)view duration:(NSTimeInterval)duration;

#pragma mark - 显示失败

- (void)showFailureWithMessage:(NSString *)message;

- (void)showFailureWithMessage:(NSString *)message onView:(UIView *)view;

- (void)showFailureWithMessage:(NSString *)message onView:(UIView *)view duration:(NSTimeInterval)duration;

#pragma mark - 显示警告

- (void)showWarningWithMessage:(NSString *)message;

- (void)showWarningWithMessage:(NSString *)message onView:(UIView *)view;

- (void)showWarningWithMessage:(NSString *)message onView:(UIView *)view duration:(NSTimeInterval)duration;

#pragma mark - 显示菊花

- (void)showIndeterminateWithMessage:(NSString *)message;

- (void)showIndeterminateWithMessage:(NSString *)message onView:(UIView *)view;

- (void)showIndeterminateWithMessage:(NSString *)message onView:(UIView *)view duration:(NSTimeInterval)duration;

- (void)showIndeterminateWithMessage:(NSString *)message onView:(UIView *)view duration:(NSTimeInterval)duration backgroundColor:(UIColor *)backgroundColor;

// 手动隐藏
- (void)hideAnimated:(BOOL)animated;

#pragma mark - 模式切换

// 开始模式切换
- (void)startModeSwitchingWithMessage:(NSString *)message onView:(UIView *)view;

// 成功
- (void)switchingSuccessModeWithMessage:(NSString *)message;

// 失败
- (void)switchingFailureModeWithMessage:(NSString *)message;

// 结束模式切换
- (void)endModeSwitching;

@end
