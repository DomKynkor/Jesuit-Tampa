//
//  ScheduleViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 3/13/13.
//  Copyright (c) 2013 Dominic Kynkor. All rights reserved.
//

#import "ScheduleViewController.h"

@interface ScheduleViewController ()

@end

@implementation ScheduleViewController

@synthesize webView;

- (void)viewDidLoad {
    
    NSString *urlAddress = @"http://www.jesuittampa.org/Athletics/Athletics-Calendar.aspx" ;
    
    //Create a URL object.
    NSURL *url = [NSURL URLWithString:urlAddress];
    
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView.
    [webView loadRequest:requestObj];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

@end
