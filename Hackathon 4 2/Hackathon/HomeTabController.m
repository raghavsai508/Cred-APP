//
//  HomeTabController.m
//  Hackathon
//
//  Created by Raghav Sai on 2/12/15.
//  Copyright (c) 2015 handson. All rights reserved.
//

#import "HomeTabController.h"

@interface HomeTabController ()<UITabBarDelegate>

@end

@implementation HomeTabController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarItem.title=@"Home";
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    if(item.tag==1)
    {
        //your code
    }
    else
    {
        //your code
    }
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
