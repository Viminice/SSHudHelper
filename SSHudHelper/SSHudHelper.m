//
//  SSHudHelper.m
//  SSHudHelperExample
//
//  Created by Vimin on 2017/7/28.
//  Copyright © 2017年 广州方鼎软件科技发展有限公司. All rights reserved.
//

#import "SSHudHelper.h"
#import "MBProgressHUD.h"

@interface SSHudHelper ()

@property (weak, nonatomic) MBProgressHUD *hud;

@property (weak, nonatomic) UIView *container;

@end

@implementation SSHudHelper

#pragma mark - 懒加载
- (MBProgressHUD *)hud {
    if (_hud == nil) {
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.container animated:YES];
        hud.backgroundView.style = MBProgressHUDBackgroundStyleSolidColor;
        hud.backgroundView.color = [UIColor clearColor];
        hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
        hud.bezelView.color = [UIColor colorWithWhite:0.0 alpha:0.8];
        hud.contentColor = [UIColor whiteColor];
        hud.label.numberOfLines = 0;
        _hud = hud;
    }
    return _hud;
}

#pragma mark - 单例
+ (instancetype)defaultHelper {
    static SSHudHelper *defaultHelper = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        defaultHelper = [[self alloc] init];
    });
    return defaultHelper;
}

#pragma mark - 仅提示文字信息

- (void)showMessage:(NSString *)message {
    [self showMessage:message onView:nil];
}

- (void)showMessage:(NSString *)message onView:(UIView *)view {
    [self showMessage:message onView:nil duration:0];
}

- (void)showMessage:(NSString *)message onView:(UIView *)view duration:(NSTimeInterval)duration {
    if (view == nil) {
        view = [UIApplication sharedApplication].keyWindow;
    }
    self.container = view;
    self.hud.mode = MBProgressHUDModeText;
    self.hud.label.text = message;
    // 如果设置的持续时间就自动隐藏, 否则手动隐藏
    if (duration) {
        [self.hud hideAnimated:YES afterDelay:duration];
    }
}

#pragma mark - 显示成功信息

- (void)showSuccessWithMessage:(NSString *)message {
    [self showSuccessWithMessage:message onView:nil];
}

- (void)showSuccessWithMessage:(NSString *)message onView:(UIView *)view {
    [self showSuccessWithMessage:message onView:view duration:0];
}

- (void)showSuccessWithMessage:(NSString *)message onView:(UIView *)view duration:(NSTimeInterval)duration {
    if (view == nil) {
        view = [UIApplication sharedApplication].keyWindow;
    }
    self.container = view;
    NSBundle *resources = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"resources.bundle" ofType:nil]];
    NSString *imageName = nil;
    if ([UIScreen mainScreen].scale < 2.0) {
        imageName = @"success@2x.png";
    }else {
        imageName = @"success@3x.png";
    }
    UIImage *image = [UIImage imageWithContentsOfFile:[resources pathForResource:imageName ofType:nil]];
    UIImageView *imageV = [[UIImageView alloc] initWithImage:image];
    self.hud.mode = MBProgressHUDModeCustomView;
    self.hud.customView = imageV;
    self.hud.label.text = message;
    // 如果设置的持续时间就自动隐藏, 否则手动隐藏
    if (duration) {
        [self.hud hideAnimated:YES afterDelay:duration];
    }
}

#pragma mark - 显示失败信息

- (void)showFailureWithMessage:(NSString *)message {
    [self showFailureWithMessage:message onView:nil];
}

- (void)showFailureWithMessage:(NSString *)message onView:(UIView *)view {
    [self showFailureWithMessage:message onView:view duration:0];
}

- (void)showFailureWithMessage:(NSString *)message onView:(UIView *)view duration:(NSTimeInterval)duration {
    if (view == nil) {
        view = [UIApplication sharedApplication].keyWindow;
    }
    self.container = view;
    NSBundle *resources = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"resources.bundle" ofType:nil]];
    NSString *imageName = nil;
    if ([UIScreen mainScreen].scale < 2.0) {
        imageName = @"failure@2x.png";
    }else {
        imageName = @"failure@3x.png";
    }
    UIImage *image = [UIImage imageWithContentsOfFile:[resources pathForResource:imageName ofType:nil]];
    UIImageView *imageV = [[UIImageView alloc] initWithImage:image];
    self.hud.mode = MBProgressHUDModeCustomView;
    self.hud.customView = imageV;
    self.hud.label.text = message;
    // 如果设置的持续时间就自动隐藏, 否则手动隐藏
    if (duration) {
        [self.hud hideAnimated:YES afterDelay:duration];
    }
}

#pragma mark - 显示警告信息

- (void)showWarningWithMessage:(NSString *)message {
    [self showWarningWithMessage:message onView:nil];
}

- (void)showWarningWithMessage:(NSString *)message onView:(UIView *)view {
    [self showWarningWithMessage:message onView:view duration:0];
}

- (void)showWarningWithMessage:(NSString *)message onView:(UIView *)view duration:(NSTimeInterval)duration {
    if (view == nil) {
        view = [UIApplication sharedApplication].keyWindow;
    }
    self.container = view;
    NSBundle *resources = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"resources.bundle" ofType:nil]];
    NSString *imageName = nil;
    if ([UIScreen mainScreen].scale < 2.0) {
        imageName = @"warning@2x.png";
    }else {
        imageName = @"warning@3x.png";
    }
    UIImage *image = [UIImage imageWithContentsOfFile:[resources pathForResource:imageName ofType:nil]];
    UIImageView *imageV = [[UIImageView alloc] initWithImage:image];
    self.hud.mode = MBProgressHUDModeCustomView;
    self.hud.customView = imageV;
    self.hud.label.text = message;
    // 如果设置的持续时间就自动隐藏, 否则手动隐藏
    if (duration) {
        [self.hud hideAnimated:YES afterDelay:duration];
    }
}

#pragma mark - 显示菊花

- (void)showIndeterminateWithMessage:(NSString *)message {
    [self showIndeterminateWithMessage:message onView:nil];
}

- (void)showIndeterminateWithMessage:(NSString *)message onView:(UIView *)view {
    [self showIndeterminateWithMessage:message onView:view duration:0];
}

- (void)showIndeterminateWithMessage:(NSString *)message onView:(UIView *)view duration:(NSTimeInterval)duration {
    [self showIndeterminateWithMessage:message onView:view duration:duration backgroundColor:nil];
}

- (void)showIndeterminateWithMessage:(NSString *)message onView:(UIView *)view duration:(NSTimeInterval)duration backgroundColor:(UIColor *)backgroundColor {
    if (view == nil) {
        view = [UIApplication sharedApplication].keyWindow;
    }
    self.container = view;
    self.hud.mode = MBProgressHUDModeIndeterminate;
    self.hud.label.text = message;
    // 如果设置的持续时间就自动隐藏, 否则手动隐藏
    if (duration) {
        [self.hud hideAnimated:YES afterDelay:duration];
    }
    if (backgroundColor) {
        self.hud.backgroundView.color = backgroundColor;
    }
}

// 手动隐藏
- (void)hideAnimated:(BOOL)animated {
    [self.hud hideAnimated:animated];
}

#pragma mark - 模式切换

- (void)startModeSwitchingWithMessage:(NSString *)message onView:(UIView *)view {
    if (view == nil) {
        view = [UIApplication sharedApplication].keyWindow;
    }
    self.container = view;
    self.hud.label.text = message;
    self.hud.minSize = CGSizeMake(150.0, 100.0);
}

- (void)switchingSuccessModeWithMessage:(NSString *)message {
    NSBundle *resources = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"resources.bundle" ofType:nil]];
    NSString *imageName = nil;
    if ([UIScreen mainScreen].scale < 2.0) {
        imageName = @"success@2x.png";
    }else {
        imageName = @"success@3x.png";
    }
    UIImage *image = [UIImage imageWithContentsOfFile:[resources pathForResource:imageName ofType:nil]];
    UIImageView *imageV = [[UIImageView alloc] initWithImage:image];
    self.hud.mode = MBProgressHUDModeCustomView;
    self.hud.customView = imageV;
    self.hud.label.text = message;
}

- (void)switchingFailureModeWithMessage:(NSString *)message {
    NSBundle *resources = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"resources.bundle" ofType:nil]];
    NSString *imageName = nil;
    if ([UIScreen mainScreen].scale < 2.0) {
        imageName = @"failure@2x.png";
    }else {
        imageName = @"failure@3x.png";
    }
    UIImage *image = [UIImage imageWithContentsOfFile:[resources pathForResource:imageName ofType:nil]];
    UIImageView *imageV = [[UIImageView alloc] initWithImage:image];
    self.hud.mode = MBProgressHUDModeCustomView;
    self.hud.customView = imageV;
    self.hud.label.text = message;
}

- (void)endModeSwitching {
    [self hideAnimated:YES];
}

@end
