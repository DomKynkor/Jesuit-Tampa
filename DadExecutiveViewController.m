//
//  DadExecutiveViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 3/30/13.
//  Copyright (c) 2013 Dominic Kynkor. All rights reserved.
//

#import "DadExecutiveViewController.h"

@interface DadExecutiveViewController ()

@end

@implementation DadExecutiveViewController

@synthesize webView;

- (void)viewDidLoad {
    
    NSString *urlAddress = @"http://m.jesuittampa.org/pages/About-Jesuit?subpage=Dads-Club%2FDads-Club-Officers" ;
    
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
