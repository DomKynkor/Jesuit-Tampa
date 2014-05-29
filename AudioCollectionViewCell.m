//
//  AudioCollectionViewCell.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 1/4/14.
//  Copyright (c) 2014 Dominic Kynkor. All rights reserved.
//

#import "AudioCollectionViewCell.h"

@implementation AudioCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc {
    [_audioTitle release];
    [super dealloc];
}
@end
