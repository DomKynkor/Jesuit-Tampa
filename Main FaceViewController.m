//
//  Main FaceViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 6/21/13.
//  Copyright (c) 2013 Dominic Kynkor. All rights reserved.
//

#import "Main FaceViewController.h"

@interface Main_FaceViewController ()

@end

@implementation Main_FaceViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _MediaLinks.frame = CGRectMake(30, 50, 100, 100);
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
        NSLog(@"touchesBegan");
        [UIView animateWithDuration:0.75 animations:^{_MediaLinks.frame = CGRectMake(10, 70, 100, 100);}];
}
@end
