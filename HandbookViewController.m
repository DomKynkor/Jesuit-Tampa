//
//  HandbookViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 4/15/13.
//  Copyright (c) 2013 Dominic Kynkor. All rights reserved.
//

#import "HandbookViewController.h"

@interface HandbookViewController ()

@end

@implementation HandbookViewController

@synthesize webView;

- (void)viewDidLoad {
    
    NSString *urlAddress = @"http://www.jesuittampa.org/userfiles/file/Student%20Handbook%202012-13.pdf" ;
    
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
