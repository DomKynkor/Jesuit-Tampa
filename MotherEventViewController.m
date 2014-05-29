//
//  MotherEventViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 4/1/13.
//  Copyright (c) 2013 Dominic Kynkor. All rights reserved.
//

#import "MotherEventViewController.h"

@interface MotherEventViewController ()

@end

@implementation MotherEventViewController

@synthesize webView;

- (void)viewDidLoad {
    
    NSString *urlAddress = @"http://www.jesuittampa.org/About-Jesuit/Mothers-Club/Mothers-Club-Calendar.aspx" ;
    
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
