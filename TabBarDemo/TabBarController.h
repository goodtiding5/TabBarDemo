//
//  TabBarController.h
//  TabBarDemo
//
//  Created by Jeremiah Zhao on 4/27/12.
//  Copyright (c) 2012 Kenneth Zhao. All rights reserved.
//



@interface TabBarController : UIViewController
{
    @private
    UITabBarController *_tabBarController;
}

@property (retain, nonatomic) UITabBarController *tabBarController;

@end
