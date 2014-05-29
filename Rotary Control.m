//
//  Rotary Control.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 6/24/13.
//  Copyright (c) 2013 Dominic Kynkor. All rights reserved.
//

#import "Rotary Control.h"

@interface Rotary_Control()
-(void)drawWheel;
@end

static float deltaAngle;

@implementation Rotary_Control

@synthesize delegate,container,numberOfSections;
@synthesize startTransform;

-(id)initWithFrame:(CGRect)frame andDelegate:(id)del withSections:(int)sectionsNumber
{
    if ((self=[super initWithFrame:frame]))
    {
        self.numberOfSections=sectionsNumber;
        self.delegate=del;
        [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(rotate) userInfo:nil repeats:YES];
        [self drawWheel];
    }
    return self;
}
-(void) drawWheel
{
    container=[[UIView alloc]initWithFrame:self.frame];
    CGFloat angleSize= 2*M_PI/numberOfSections;
    for(int i=0 ;i<numberOfSections;i++)
    {
        UILabel *im=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 40)];
        im.backgroundColor=[UIColor greenColor];
        im.text=[NSString stringWithFormat:@"%i", i];
        im.layer.anchorPoint=CGPointMake(1.0f, 0.5f);
        im.layer.position=CGPointMake(container.bounds.size.width/2.0, container.bounds.size.width/2.0);
        im.transform=CGAffineTransformMakeRotation(angleSize *i);
        im.tag=i;
        [container addSubview:container];
        
    }
}
-(void)rotate
{
    CGAffineTransform t=CGAffineTransformRotate(container.transform, -0.78);
    container.transform=t;
}
-(BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
    CGPoint touchPoint=[touch locationInView:self];
    float dx=touchPoint.x - container.center.x;
    float dy=touchPoint.y - container.center.y;
    deltaAngle=atan2f(dx, dy);
    startTransform=container.transform;
    return YES;
}
@end