//
//  SupportViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 3/28/13.
//  Copyright (c) 2013 Dominic Kynkor. All rights reserved.
//

#import "SupportViewController.h"

@interface SupportViewController ()

@end

@implementation SupportViewController

@synthesize webView;

- (void)viewDidLoad {
    
    NSString *urlAddress = @"https://donations.jesuittampa.org/default.aspx" ;
    
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
