//
//  BackButton.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 4/13/14.
//  Copyright (c) 2014 Dominic Kynkor. All rights reserved.
//

#import "BackButton.h"

@implementation BackButton

@synthesize labelImage, label;

-(UIImage*)generateRadial
{
    CGGradientRef gradient;
    CGColorSpaceRef colorSpace;
    size_t locations_num = 6;
    CGFloat locations[6] = {0.1,0.2,0.3,0.4,0.5,1.0};
    CGFloat components[24] = {  0.0, 0.4, 1.0, 0.8, //Location 1
        0.0, 0.4, 1.0, 0.7, //Location 2
        0.0, 0.4, 1.0, 0.6, //Location 3
        0.0, 0.4, 1.0, 0.5, //Location 4
        0.0, 0.4, 1.0, 0.4, //Location 5
        0.0, 0.4, 1.0, 0.1  //Location 6
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
