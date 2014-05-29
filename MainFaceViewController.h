//
//  MainFaceViewController.h
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 11/5/12.
//  Copyright (c) 2012 Dominic Kynkor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

#import "CircleGradient.h"
#import "LabelButtons.h"

#import "NewsViewController.h"



@interface MainFaceViewController : UIViewController{
    NSTimer *downTimer;
    NSTimer *upTimer;
    float upPrevYvalue;
    float downPrevYvalue;
}

@property (retain, nonatomic) CircleGradient *gradientView;
@property (retain, nonatomic) NSMutableArray *buttonList;


@property float height,width;
@property BOOL touchAble;
@property BOOL upAble;
@property BOOL downAble;
@property BOOL viewPushed;
//@property NSTimer *boundsCheckTimer;

//-(void)boundsCheck;
-(void)moveObjectsUp;
-(void)moveObjectsDown;

-()position;

- (IBAction) goToRoot: (UIStoryboardSegue*) segue;

@end


