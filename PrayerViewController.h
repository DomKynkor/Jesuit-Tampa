//
//  PrayerViewController.h
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 1/26/14.
//  Copyright (c) 2014 Dominic Kynkor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BackButton.h"
#import "MainFaceViewController.h"

@interface PrayerViewController : UIViewController{
IBOutlet UIWebView *webView;

}

@property (nonatomic, retain) UIWebView *webView;
@property (nonatomic, retain) BackButton *backbutton;
@property (nonatomic, strong) UIDynamicAnimator *animator;
@end


