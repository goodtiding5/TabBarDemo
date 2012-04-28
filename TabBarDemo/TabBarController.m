//
//  TabBarController.m
//  TabBarDemo
//
//  Created by Jeremiah Zhao on 4/27/12.
//  Copyright (c) 2012 Kenneth Zhao. All rights reserved.
//

#import "TabBarController.h"
#import "BlueViewController.h"
#import "GreenViewController.h"
#import "RedViewController.h"
#import "YellowViewController.h"

@implementation TabBarController

@synthesize tabBarController = _tabBarController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id) init
{
    self = [super init];
    if (self) {
        [self initWithNibName: nil bundle: nil];
    }
    return self;
}

- (void) dealloc
{
    self.tabBarController = nil;
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void) loadView
{
    UIView *contentView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
	contentView.backgroundColor = [UIColor whiteColor];
	self.view = contentView;
	[contentView release];
    
    // Declare all view controllers
    BlueViewController *blueViewController = [[BlueViewController alloc] initWithNibName: @"BlueViewController" 
                                                                                  bundle: nil];
    blueViewController.title = @"Blue";
    UITabBarItem *barBlueItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemTopRated tag:0];
    blueViewController.tabBarItem = barBlueItem;
    [barBlueItem release];
    
    
    GreenViewController *greenViewController = [[GreenViewController alloc] initWithNibName: @"GreenViewController"
                                                                                     bundle: nil];
    greenViewController.title = @"Green";
    UITabBarItem *barGreenItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:1];
    greenViewController.tabBarItem = barGreenItem;
    [barGreenItem release];
    
    RedViewController *redViewController = [[RedViewController alloc] initWithNibName: @"RedViewController"
                                                                               bundle: nil];
    redViewController.title = @"Red";
    UITabBarItem *redBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:2];
    redViewController.tabBarItem = redBarItem;
    [redBarItem release];
    
    YellowViewController *yellowViewController = [[YellowViewController alloc] initWithNibName: @"yellowViewController"
                                                                                        bundle: nil];
    yellowViewController.title = @"Yellow";
    UITabBarItem *yellowBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:3];
    yellowViewController.tabBarItem = yellowBarItem;
    [yellowBarItem release];
    
    
    NSArray *controllers = [NSArray arrayWithObjects: blueViewController, greenViewController, yellowViewController, redViewController, nil];
    
    [blueViewController release];
    [greenViewController release];
    [redViewController release];
    [yellowViewController release];
    
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.view.frame = self.view.bounds;
    [self.tabBarController setViewControllers: controllers];
    
    [self.view addSubview: self.tabBarController.view];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
