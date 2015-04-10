//
//  TabbarControllers.h
//  tabbarViewcontroller
//
//  Created by mac on 15-4-10.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "oneViewController.h"
#import "twoViewController.h"
#import "threeViewController.h"
#import "fourViewController.h"
#import "fiveViewController.h"
#import "sixViewController.h"
@interface TabbarControllers : UITabBarController<UITabBarControllerDelegate,UITabBarDelegate>


- (void)initTabbars:(NSMutableArray*)Gviewcontrollers GGGindex:(NSInteger)Gindex GGGtitleStr:(NSMutableArray *)Gtitle GisCusorDefault:(BOOL)GisCusorDefault;

@end
