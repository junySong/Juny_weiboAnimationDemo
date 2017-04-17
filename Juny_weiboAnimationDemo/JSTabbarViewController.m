//
//  JSTabbarViewController.m
//  Juny_weiboAnimationDemo
//
//  Created by sy on 2017/4/17.
//  Copyright © 2017年 Juny. All rights reserved.
//

#import "JSTabbarViewController.h"
#import "FirstViewController.h"
#import "MiddleViewController.h"
#import "SecondViewController.h"


#define Screen_Height [UIScreen mainScreen].bounds.size.height
#define Screen_Weight [UIScreen mainScreen].bounds.size.width

@interface JSTabbarViewController ()<UITabBarControllerDelegate>

@property (nonatomic, assign)NSInteger  oldSelected;

@end

@implementation JSTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor ];
    self.delegate = self;
  

    
//  自定义UITabBarItem，只能定义title和image，大小不能改变
    MiddleViewController *vc2 = [[MiddleViewController alloc]init];
    UITabBarItem *item =  [[UITabBarItem alloc]initWithTitle:@"middle" image:[UIImage imageNamed:@"Like"] selectedImage:[UIImage imageNamed:@"Like-Blue"]];
    item.tag = 1999;
    [vc2 setTabBarItem:item];
    
    
    [self addChildViewController:vc2];


    
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


- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(nonnull UIViewController *)viewController{
    if ([viewController isKindOfClass:[MiddleViewController class]]) {
        MiddleViewController *middle = [[MiddleViewController alloc]init];
        [self presentViewController:middle animated:YES completion:^{
            
        }];
        return NO;
    }
    else{
        return YES;
    }
}



@end
