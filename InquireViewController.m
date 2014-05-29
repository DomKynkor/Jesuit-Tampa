//
//  InquireViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 2/10/13.
//  Copyright (c) 2013 Dominic Kynkor. All rights reserved.
//

#import "InquireViewController.h"

@interface InquireViewController ()

@end

@implementation InquireViewController

@synthesize webView;

- (void)viewDidLoad {
    
    NSString *urlAddress = @"https://jesuittampa.seniormbp.com/SeniorApps/admissions/inquiry.faces" ;
    
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
