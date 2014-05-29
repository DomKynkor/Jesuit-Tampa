//
//  DadMeetingViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 3/30/13.
//  Copyright (c) 2013 Dominic Kynkor. All rights reserved.
//

#import "DadMeetingViewController.h"

@interface DadMeetingViewController ()

@end

@implementation DadMeetingViewController

@synthesize webView;

- (void)viewDidLoad {
    
    NSString *urlAddress = @"http://www.jesuittampa.org/About-Jesuit/Dads-Club/Dads-Club-News-Page-2010.aspx" ;
    
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
