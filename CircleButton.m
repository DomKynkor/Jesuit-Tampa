//
//  CircleButton.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 3/2/14.
//  Copyright (c) 2014 Dominic Kynkor. All rights reserved.
//

#import "CircleButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation CircleButton

@synthesize label, labelImage;

-(UIImage*)generateRadial
{
    CGGradientRef gradient;
    CGColorSpaceRef colorSpace;
    size_t locations_num = 6;
    CGFloat locations[6] = {0.1,0.2,0.3,0.4,0.5,0.6};
    CGFloat components[24] =
    {
        0.5, 0.4, 1.0, 0.8, //Location 1
        0.5, 0.4, 1.0, 0.7, //Location 2
        0.5, 0.4, 1.0, 0.6, //Location 3
        0.5, 0.4, 1.0, 0.5, //Location 4
        0.5, 0.4, 1.0, 0.4, //Location 5
        0.5, 0.4, 1.0, 0.1  //Location 6
    };
    colorSpace = CGColorSpaceCreateDeviceRGB();
    gradient = CGGradientCreateWithColorComponents (colorSpace, components, locations, locations_num);
    CGPoint startPoint, endPoint;
    startPoint.x = self.frame.size.width/2;
    startPoint.y = self.frame.size.height/2;
    //End point
    endPoint.x = self.frame.size.width/2;
    endPoint.y = self.frame.size.height/2;
    //Begin an image context
    UIGraphicsBeginImageContext(self.frame.size);
    CGContextRef imageContext = UIGraphicsGetCurrentContext();
    //Use CG to draw the radial gradient into the image context
    CGContextDrawRadialGradient(imageContext, gradient, startPoint, 0, endPoint, self.frame.size.width/2, 0);
    //Get the image from the context
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImage *temp=[UIImage imageNamed:@""];
    self.labelImage=[[UIImageView alloc]initWithImage:temp];
    labelImage.alpha=0.6;
    label = [[UILabel alloc] initWithFrame:CGRectMake(0, -33, 200, 80)];
    [label setBackgroundColor:[UIColor clearColor]];
    
    [label setFont:[UIFont fontWithName:@"TrebuchetMS-Bold" size:12]];
    [label setTextColor:[UIColor whiteColor]];
    [label setText:@"Generic"];
    [labelImage addSubview:label];
    [self.label setAlpha:1.0];
    
    
    return result;
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.layer.contents = (__bridge id)([[self generateRadial]CGImage]);
    }
    return self;
}
@end
