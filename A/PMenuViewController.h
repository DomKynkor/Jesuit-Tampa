//
//  PMenuViewController.h
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 4/13/14.
//  Copyright (c) 2014 Dominic Kynkor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BackButton.h"

@interface PMenuViewController : UIViewController{}

@property (nonatomic, retain) BackButton *backbutton;
@property (nonatomic, strong) UIDynamicAnimator *animator;


@end
