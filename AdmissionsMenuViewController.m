//
//  AdmissionsMenuViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 4/27/14.
//  Copyright (c) 2014 Dominic Kynkor. All rights reserved.
//

#import "AdmissionsMenuViewController.h"

@interface AdmissionsMenuViewController ()

@end

@implementation AdmissionsMenuViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)unwindToAdmissions:(UIStoryboardSegue *)unwindSegue
{
   
}
@end
