//
//  UIViewController+YHViewControllerCategroy.h
//  YHSeesaw
//
//  Created by 赵一欢 on 2017/2/16.
//  Copyright © 2017年 zhaoyihuan. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "YHModaAnimationManager.h"
typedef void (^AlertActionBlock)(NSInteger actionNumber);
@interface UIViewController (YHViewControllerCategroy)
//- (void)showAlertTitle:(NSString *)title message:(NSString *)message actionTitleArray:(NSArray *)actionArray colorTitle:(NSArray *)colorTitleArray withAction:(AlertActionBlock)alertAction preferredStyle:(UIAlertControllerStyle)preferredStyle;
//- (void)showAttributedStringAlertTitle:(NSAttributedString *)title message:(NSAttributedString *)message actionTitleArray:(NSArray *)actionArray withAction:(AlertActionBlock)alertAction preferredStyle:(UIAlertControllerStyle)preferredStyle;
- (void)showSystemAlertTitle:(NSString *)title message:(NSString *)message actionTitleArray:(NSArray *)actionArray colorTitle:(NSArray *)colorTitleArray withAction:(AlertActionBlock)alertAction preferredStyle:(UIAlertControllerStyle)preferredStyle;
//- (void)customPresentVC:(UIViewController *)vc animation:(YHModaAnimationType)animation showBlackBackgroud:(BOOL)showBlackBackgroud canTapDismiss:(BOOL)canTapDismiss;
//- (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;
//- (void)setNavBarBackgroundColorForMainColor:(BOOL)forMainColor;
@end
