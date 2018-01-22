//
//  UIViewController+YHViewControllerCategroy.m
//  YHSeesaw
//
//  Created by 赵一欢 on 2017/2/16.
//  Copyright © 2017年 zhaoyihuan. All rights reserved.
//

#import "UIViewController+YHViewControllerCategroy.h"
//#import "YHAlertViewController.h"
//#import "YHBaseNavigationController.h"
#if TARGET_IPHONE_SIMULATOR
#import <objc/runtime.h>
#else
#import <objc/runtime.h>
#import <objc/message.h>
#endif
//@interface UIViewController (YHAssociated)
//@property (nonatomic, strong) YHModaAnimationManager * modaAnimationManager;
//@end
//@implementation UIViewController (YHAssociated)
//- (void)setModaAnimationManager:(YHModaAnimationManager *)modaManager
//{
//    // 设置关联对象
//    objc_setAssociatedObject(self, @selector(modaAnimationManager), modaManager, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//}
//- (YHModaAnimationManager *)modaAnimationManager
//{
//    // 得到关联对象
//    return objc_getAssociatedObject(self, @selector(modaAnimationManager));
//}
//@end
@implementation UIViewController (YHViewControllerCategroy)
- (void)showSystemAlertTitle:(NSString *)title message:(NSString *)message actionTitleArray:(NSArray *)actionArray colorTitle:(NSArray *)colorTitleArray withAction:(AlertActionBlock)alertAction preferredStyle:(UIAlertControllerStyle)preferredStyle
{
        UIAlertController * alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
        //添加按钮
        if (actionArray && actionArray.count) {
            for (NSInteger i = 0; i < actionArray.count; i ++) {
                UIAlertActionStyle alertActionStyle = UIAlertActionStyleDefault;
                if ([actionArray[i] isEqualToString:@"取消"]) {
                    alertActionStyle = UIAlertActionStyleCancel;
                }
                for (NSString * colorTitle in colorTitleArray) {
                    if ([colorTitle isEqualToString:actionArray[i]]) {
                        alertActionStyle = UIAlertActionStyleDestructive;
                    }
                }
                UIAlertAction * buttonAction = [UIAlertAction actionWithTitle:actionArray[i] style:alertActionStyle handler:^(UIAlertAction * _Nonnull action) {
                    alertAction(i);
                }];
                [alertController addAction:buttonAction];
            }
        }
        [self presentViewController:alertController animated:YES completion:nil];
}
//- (void)showAlertTitle:(NSString *)title message:(NSString *)message actionTitleArray:(NSArray *)actionArray colorTitle:(NSArray *)colorTitleArray withAction:(AlertActionBlock)alertAction preferredStyle:(UIAlertControllerStyle)preferredStyle
//{
//    YHAlertViewController * alertVC = [[YHAlertViewController alloc] init];
//    alertVC.preferredStyle = preferredStyle;
//    alertVC.alertTitle = title;
//    alertVC.alertMessage = message;
//    [alertVC addButtonWithButtonTitleArray:actionArray colorTitle:colorTitleArray andActionBlock:alertAction];
//    [alertVC setFrame];
//    YHModaAnimationType animation = preferredStyle == UIAlertControllerStyleActionSheet ? YHModaAnimationTypePresent : YHModaAnimationTypeSpring;
//    self.modaAnimationManager = [[YHModaAnimationManager alloc] initWithModaAnimationType:animation showBlackBackgroud:YES canTapDismiss:YES];
//    alertVC.transitioningDelegate = self.modaAnimationManager;
//    alertVC.modalPresentationStyle = UIModalPresentationCustom;
//    [self presentViewController:alertVC animated:YES completion:nil];    
//}
//- (void)customPresentVC:(UIViewController *)vc animation:(YHModaAnimationType)animation showBlackBackgroud:(BOOL)showBlackBackgroud canTapDismiss:(BOOL)canTapDismiss
//{
//    self.modaAnimationManager = [[YHModaAnimationManager alloc] initWithModaAnimationType:animation showBlackBackgroud:showBlackBackgroud canTapDismiss:canTapDismiss];
//    vc.transitioningDelegate = self.modaAnimationManager;
//    vc.modalPresentationStyle = UIModalPresentationCustom;
//    [self presentViewController:vc animated:YES completion:nil];
//}
//- (void)showAttributedStringAlertTitle:(NSAttributedString *)title message:(NSAttributedString *)message actionTitleArray:(NSArray *)actionArray withAction:(AlertActionBlock)alertAction preferredStyle:(UIAlertControllerStyle)preferredStyle
//{
//    UIAlertController * alertController = [UIAlertController alertControllerWithTitle:title.string message:message.string preferredStyle:preferredStyle];
//    //添加按钮
//    if (actionArray && actionArray.count) {
//        for (NSInteger i = 0; i < actionArray.count; i ++) {
//            UIAlertAction * buttonAction = [UIAlertAction actionWithTitle:actionArray[i] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//                alertAction(i);
//            }];
//            [alertController addAction:buttonAction];
//        }
//    }
//    [self presentViewController:alertController animated:YES completion:nil];
//}
//- (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString
//{
//    if (jsonString == nil) {
//        return nil;
//    }
//    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
//    NSError *err;
//    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&err];
//    if(err) {
//        return nil;
//    }
//    return dic;
//}
//- (void)setNavBarBackgroundColorForMainColor:(BOOL)forMainColor
//{
//    if (forMainColor) {
//        YHBaseNavigationController * nav = (YHBaseNavigationController *)self.navigationController;
//        nav.backgroundColor = [UIColor colorWithHexString:MAIN_COLOR_YELLOW];
//        nav.navigationBar.barStyle = UIBarStyleBlack;
//        return;
//    }
//    YHBaseNavigationController * nav = (YHBaseNavigationController *)self.navigationController;
//    nav.backgroundColor = [UIColor whiteColor];
//    nav.navigationBar.barStyle = UIBarStyleDefault;
//}
@end
