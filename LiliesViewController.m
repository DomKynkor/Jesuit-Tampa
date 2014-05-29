//
//  LiliesViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 4/15/13.
//  Copyright (c) 2013 Dominic Kynkor. All rights reserved.
//

#import "LiliesViewController.h"

@interface LiliesViewController ()

@end

@implementation LiliesViewController

@synthesize webView;

- (void)viewDidLoad {
    
    NSString *urlAddress = @"http://www.jesuittampa.org/About-Jesuit/Tiger-Lilies-Alumni-Moms.aspx" ;
    
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
