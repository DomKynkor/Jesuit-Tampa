//
//  MenuViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 6/24/13.
//  Copyright (c) 2013 Dominic Kynkor. All rights reserved.
//

#import "MenuViewController.h"
#import "Rotary Control.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

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
	Rotary_Control *wheel=[[Rotary_Control alloc]initWithFrame:CGRectMake(0,0,200,200) andDelegate:self withSections:8];
    [self.view addSubview:wheel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
