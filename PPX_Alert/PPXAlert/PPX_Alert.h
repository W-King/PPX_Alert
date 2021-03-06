//
//  PPX_Alert.h
//  PPX_Alert
//
//  Created by pipixia on 16/10/17.
//  Copyright © 2016年 pipixia. All rights reserved.
//
/** 
 *方式一 确定取消两个按钮
 PPX_Alert *PPXAlert = [[PPX_Alert alloc] initWithTitle:@"提示" message:@"这是一些信息"];
 [PPXAlert addBtnAlertTitle:@"确定" action:^{
 NSLog(@"确定");
 }];
 [PPXAlert addBtnAlertTitle:@"取消" action:^{
 NSLog(@"取消");
 }];
 [PPXAlert showAlertWithSender:self];
 
 *方式二 确定一个按钮
 [PPX_Alert showAlertViewCertainWithTitle:@"拍照" message:@"lalala" WithUIViewController:self];
 
 *方式三 中间弹出几个横向按钮
 PPX_Alert *PPXAlert = [[PPX_Alert alloc] initWithTitle:@"提示" message:@"拍照"];
 [PPXAlert addBtnAlertTitle:@"相机" action:^{
 NSLog(@"相机");
 }];
 [PPXAlert addBtnAlertTitle:@"相册" action:^{
 NSLog(@"相册");
 }];
 [PPXAlert addBtnAlertTitle:@"取消" action:^{
 NSLog(@"取消");
 }];
 [PPXAlert showAlertWithSender:self];
 
 方法四 底部弹出按钮
 PPX_Alert *PPXAlert = [[PPX_Alert alloc] initWithTitle:@"提示" message:@"拍照"];
 [PPXAlert addBtnSheetTitle:@"相机" action:^{
 NSLog(@"相机");
 }];
 [PPXAlert addBtnSheetTitle:@"相册" action:^{
 NSLog(@"相册");
 }];
 [PPXAlert addBtnSheetTitle:@"取消" action:^{
 NSLog(@"取消");
 }];
 [PPXAlert showActionSheetWithSender:self];
 */
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^ClickAction)();

@interface PPX_Alert : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *message;

/**
 * @param title    标题
 * @param message  提示内容
 */
- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message;

- (void)setTitle:(NSString *)title message:(NSString *)message;

/**
 * @brief 添加按钮及事件，多个按钮便多次调用，按钮按照添加顺序显示
 */
- (void)addBtnSheetTitle:(NSString *)title action:(ClickAction)action;

- (void)addBtnAlertTitle:(NSString *)title action:(ClickAction)action;

/**
 * @brief 显示提示框
 */
- (void)showAlertWithSender:(UIViewController *)sender;

- (void)showActionSheetWithSender:(UIViewController *)sender;

/**
 * @param title    标题
 * @param message  提示内容
 * @brief 只有确定按钮提示框，没点击事件
 */
+ (void)showAlertViewCertainWithTitle:(NSString *)title message:(NSString *)message WithUIViewController:(UIViewController *)ViewControll;


@end
