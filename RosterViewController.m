//
//  RosterViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 3/13/13.
//  Copyright (c) 2013 Dominic Kynkor. All rights reserved.
//

#import "RosterViewController.h"

@interface RosterViewController ()

@end

@implementation RosterViewController

@synthesize webView;

- (void)viewDidLoad {
    
    /*NSString *urlAddress = @"" ;
    
    //Create a URL object.
    NSURL *url = [NSURL URLWithString:urlAddress];
    
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView.
    [webView loadRequest:requestObj];
    */
    
    
    NSMutableURLRequest *request = [[[NSMutableURLRequest alloc] init] autorelease];
    /* set headers, etc. on request if needed */
    [request setURL:[NSURL URLWithString:@"http://www.jesuittampa.org/athletics.aspx"]];
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:NULL];
    NSString *html = [[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] autorelease];
    NSScanner *scanner = [NSScanner scannerWithString:html];
    NSString *token = nil;
    [scanner scanUpToString:@"large;\"><strong>" intoString:NULL];
    [scanner scanUpToString:@"</strong>" intoString:&token];
    
    NSLog(@"%@", token);
    NSLog(@"%@", html);
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

@end
