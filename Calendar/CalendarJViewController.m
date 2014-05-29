//
//  CalendarJViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 12/1/12.
//  Copyright (c) 2012 Dominic Kynkor. All rights reserved.
//

#import "CalendarJViewController.h"

@interface CalendarJViewController ()

@end

@implementation CalendarJViewController

@synthesize webView;

- (void)viewDidLoad {
    
    NSString *urlAddress = @"http://m.jesuittampa.org/events" ;
    
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
