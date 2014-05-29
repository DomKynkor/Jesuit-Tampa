//
//  TalesViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 3/30/13.
//  Copyright (c) 2013 Dominic Kynkor. All rights reserved.
//

#import "TalesViewController.h"

@interface TalesViewController ()

@end

@implementation TalesViewController

@synthesize webView;

- (void)viewDidLoad {
    
    NSString *urlAddress = @"http://www.jesuittampa.org/userfiles/file/Tiger%20Tales%20March%202013%20DRAFT.pdf" ;
    
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
