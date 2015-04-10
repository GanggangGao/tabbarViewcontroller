//
//  TabbarControllers.m
//  tabbarViewcontroller
//
//  Created by mac on 15-4-10.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "TabbarControllers.h"


#define SCREEN_HEGHT ([UIScreen mainScreen].bounds.size.height) // 系统的高度
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)  //系统的宽度
#define CUS_TABBAR_HEGHT 50                                     //自定义的tabbar的高度
#define CUS_TABBAR_TAG 100


@interface TabbarControllers ()
{

    UIView *CusTabbarview;   //Cus tabbar
    BOOL GisCusOrDefault;    //是否是默认的tabbarcontroller
   
}
@end

@implementation TabbarControllers

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}
/**
 *  对自定义的控件进行初始化
 *
 *  @param Gviewcontrollers   控制器的集合
 *  @param Gindex             显示第几个界面
 */

- (void)initTabbars:(NSMutableArray*)Gviewcontrollers GGGindex:(NSInteger)Gindex GGGtitleStr:(NSMutableArray *)Gtitle GisCusorDefault :(BOOL)GiscCusorDefault{
    
    GisCusOrDefault = GiscCusorDefault;
    self.viewControllers = Gviewcontrollers;
    self.selectedIndex = Gindex;
    
    //是否是系统默认的风格
    if(!GisCusOrDefault){
        
        //设置各个控制器的tile
        //创建按钮
        for (int i = 0; i < Gviewcontrollers.count; i++){
            
            UIViewController *CusViewController = [Gviewcontrollers objectAtIndex:i];
            [CusViewController setTitle:[Gtitle objectAtIndex:i]];
            
        }
        
    }else{
        
        //创建自定义的tabbar界面
        [self creadTabbarUI:Gviewcontrollers GGGtitle:Gtitle];
        
    }
    
}


/**
 *       创建tbbar
 */

- (void)creadTabbarUI:(NSMutableArray*)GItembutArray GGGtitle:(NSMutableArray*)titles{

    self.tabBar.hidden = GisCusOrDefault?YES:NO;  //隐藏最下面的tabbar
    CusTabbarview = [[UIView alloc]init];
    CusTabbarview.backgroundColor = [UIColor redColor];
    CusTabbarview.frame = CGRectMake(0, SCREEN_HEGHT - CUS_TABBAR_HEGHT, SCREEN_WIDTH, CUS_TABBAR_HEGHT);
    [self.view addSubview:CusTabbarview];
    
    //创建按钮
    for (int i = 0; i < GItembutArray.count; i++) {
    
        UIButton *GTabbarItem = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        GTabbarItem.tag = i + CUS_TABBAR_TAG;  //设置按钮的索引，以方便通知控制器的切换
        GTabbarItem.frame = CGRectMake(SCREEN_WIDTH/5 * i, 0, SCREEN_WIDTH/5, CUS_TABBAR_HEGHT);
        [GTabbarItem addTarget:self action:@selector(Gtabbarbutclick:) forControlEvents:UIControlEventTouchUpInside];
        [GTabbarItem setTitle:[titles objectAtIndex:i] forState:UIControlStateNormal];
        [CusTabbarview addSubview:GTabbarItem];
        
    }
    
}


/**
 *     自定义Tabbarbut的点击事件
 */
- (void)Gtabbarbutclick:(UIButton*)Gbutton{
    NSLog(@"最后断的是什么%ld",(long)Gbutton.tag);
    //点击按钮跳转到相应地控制器
    self.selectedIndex = Gbutton.tag - CUS_TABBAR_TAG;

}

#pragma mark 这个是UITabBarControllerDelegate

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{

    NSLog(@"我也不知道这个是什么");
    
    return YES;
}






#pragma mark 这个是UITabBarDelegate

/**
 *  前者是将要开始编辑的时候，后者是开始编辑
 *
 *  @param tabBar tabar
 *  @param items  对应的视图
 */

- (void)tabBar:(UITabBar *)tabBar willBeginCustomizingItems:(NSArray *)items{
    
    
    
}

- (void)tabBar:(UITabBar *)tabBar didBeginCustomizingItems:(NSArray *)items{

    
    
        NSLog(@"点击Edit时调用编辑刚开始");
    
    

}




/**
 *  前者将要后者点击之后点击Edit然后在点done后调用
 *
 *  @param tabBar  tabBar 本身
 *  @param items   对应的视图
 *  @param changed  是否改变了按钮的顺序
 */

- (void)tabBar:(UITabBar *)tabBar willEndCustomizingItems:(NSArray *)items changed:(BOOL)changed{
    
    
    
    
}

-(void)tabBar:(UITabBar *)tabBar didEndCustomizingItems:(NSArray *)items changed:(BOOL)changed{

    NSLog(@"点击Edit然后在点done后调用%@",changed > 0 ? @"YES" : @"NO");
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
