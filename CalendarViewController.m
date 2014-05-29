//
//  CalendarViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 10/28/12.
//  Copyright (c) 2012 Dominic Kynkor. All rights reserved.
//

#import "CalendarViewController.h"

@interface CalendarViewController ()

@end

@implementation CalendarViewController

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

- (IBAction)createEvent:(id)sender {
    EKEventStore *eventStore=[[EKEventStore alloc]init];
    EKEventEditViewController *controller=[[EKEventEditViewController alloc]init];
    controller.eventStore=eventStore;
    controller.editViewDelegate=self;
    [self presentModalViewController:controller animated: YES];
    [controller release];
}
-(void)eventEditViewController:(EKEventEditViewController *)controller didCompleteWithAction:(EKEventEditViewAction)action{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
