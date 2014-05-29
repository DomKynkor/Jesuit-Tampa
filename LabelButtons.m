//
//  LabelButtons.m
//  CircularMenu
//
//  Created by iD Student on 7/1/13.
//  Copyright (c) 2013 Dominic Dev. All rights reserved.
//

#import "LabelButtons.h"

@implementation LabelButtons

@synthesize XValue,YValue,lHeight,lWidth,labelImage,label;

-(id) init
{
    UIImage *temp=[UIImage imageNamed:@"background5.png"];
    self.labelImage=[[UIImageView alloc]initWithImage:temp];
    labelImage.alpha=0.6;
    label = [[UILabel alloc] initWithFrame:CGRectMake(0, -33, 200, 80)];
    [label setBackgroundColor:[UIColor clearColor]];

    [label setFont:[UIFont fontWithName:@"TrebuchetMS-Bold" size:12]];
    [label setTextColor:[UIColor whiteColor]];
    [label setText:@"Generic"];
    [labelImage addSubview:label];
    [self.label setAlpha:1.0];

    return self;   
}

@end
