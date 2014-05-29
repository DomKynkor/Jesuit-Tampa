//
//  AudioViewController.h
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 1/4/14.
//  Copyright (c) 2014 Dominic Kynkor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AudioViewController : UIViewController

@property (retain, nonatomic) IBOutlet UICollectionView *audioCollectionView;

- (IBAction)play:(UIButton *)sender;
- (IBAction)pause:(UIButton *)sender;
- (IBAction)stop:(UIButton *)sender;

@end
