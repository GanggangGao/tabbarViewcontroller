//
//  RootViewController.m
//  tabbarViewcontroller
//
//  Created by mac on 15-4-10.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
{

    NSMutableArray *array;
    NSMutableArray *titles;

}
@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    //创建他们的实例
    oneViewController *one = [[oneViewController alloc]init];
    twoViewController *two = [[twoViewController alloc]init];
    threeViewController *three = [[threeViewController alloc]init];
    fourViewController *four = [[fourViewController alloc]init];
    fiveViewController *five = [[fiveViewController alloc]init];
    sixViewController *six = [[sixViewController alloc]init];
    //添加viewcontroller
    array = [[NSMutableArray alloc]initWithObjects:one,two,three,four,five,six, nil];
    //给他们加上标题
    titles = [[NSMutableArray alloc]initWithObjects:@"one",@"two",@"threen",@"four",@"five",@"six",nil];
}

//自定义的tabbar
- (IBAction)Cussendbut:(id)sender {
    
    //创建他们的实例
    oneViewController *one = [[oneViewController alloc]init];
    twoViewController *two = [[twoViewController alloc]init];
    threeViewController *three = [[threeViewController alloc]init];
    fourViewController *four = [[fourViewController alloc]init];
    fiveViewController *five = [[fiveViewController alloc]init];
    sixViewController *six = [[sixViewController alloc]init];
    //添加viewcontroller
    array = [[NSMutableArray alloc]initWithObjects:one,two,three,four,five,six, nil];
    //给他们加上标题
    titles = [[NSMutableArray alloc]initWithObjects:@"one",@"two",@"threen",@"four",@"five",@"six",nil];
    TabbarControllers *tabbar = [[TabbarControllers alloc]init];
    //创建一个
    [tabbar initTabbars:array GGGindex:0 GGGtitleStr:titles GisCusorDefault:YES];
    [self.navigationController pushViewController:tabbar animated:YES];
    
    
}

//系统自带的tabbar
- (IBAction)sendbut:(id)sender {
    
  
    //创建他们的实例
    oneViewController *one = [[oneViewController alloc]init];
    twoViewController *two = [[twoViewController alloc]init];
    threeViewController *three = [[threeViewController alloc]init];
    fourViewController *four = [[fourViewController alloc]init];
    fiveViewController *five = [[fiveViewController alloc]init];
    sixViewController *six = [[sixViewController alloc]init];
    array = [[NSMutableArray alloc]initWithObjects:one,two,three,four,five,six, nil];
    //给他们加上标题
    titles = [[NSMutableArray alloc]initWithObjects:@"one",@"two",@"threen",@"four",@"five",@"six",nil];

    for (int i = 0; i < array.count; i++){
        
        UIViewController *CusViewController = [array objectAtIndex:i];
        [CusViewController setTitle:[titles objectAtIndex:i]];
        
    }
    TabbarControllers *tabbar = [[TabbarControllers alloc]init];
    //创建一个
    [tabbar initTabbars:array GGGindex:0 GGGtitleStr:titles GisCusorDefault:NO];
    [self.navigationController pushViewController:tabbar animated:YES];
    
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
