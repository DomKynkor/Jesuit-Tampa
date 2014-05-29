//
//  Rotary Control.h
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 6/24/13.
//  Copyright (c) 2013 Dominic Kynkor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Rotary Protocol.h"
#import <QuartzCore/QuartzCore.h>


@interface Rotary_Control : UIControl

@property (strong) id <Rotary_Protocol> delegate;
@property (nonatomic,strong) UIView *container;
@property int numberOfSections;
@property CGAffineTransform startTransform;
-(id) initWithFrame:(CGRect)frame andDelegate:(id)del withSections:(int)sectionsNumber;
-(void)rotate;


@end
