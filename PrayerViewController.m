//
//  PrayerViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 1/26/14.
//  Copyright (c) 2014 Dominic Kynkor. All rights reserved.
//

#import "PrayerViewController.h"

@interface PrayerViewController ()<UICollisionBehaviorDelegate>


@end
UIDynamicAnimator* _animator;
UIGravityBehavior* _gravity;
UICollisionBehavior* _collision;

BOOL _firstContact;

@implementation PrayerViewController

@synthesize webView,backbutton;




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    NSURL *myUrl = [NSURL URLWithString:@"http://www.jesuittampa.org/userfiles/file/StudentPrayerMANUAL%20%28Reduced%29.pdf"];
    NSURLRequest *myRequest = [NSURLRequest requestWithURL:myUrl];
    [webView loadRequest:myRequest];
    /*
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenWidth = screenSize.width;//X Value
    CGFloat screenHeight = screenSize.height;//Y Value
    self.backbutton = [[BackButton alloc]initWithFrame:CGRectMake(6.5*screenWidth/8, screenHeight/20, (screenHeight/10), (screenHeight/10))];
    //Side Note: (X , Y, Width, Height)
    [self.view addSubview:self.backbutton];
     */

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //determine screen size
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenHeight = screenSize.height;
    
    //determine touch location
    UITouch *touch=[[event allTouches]anyObject];
    CGPoint location=[touch locationInView:self.view];
    
    
    
    if (CGRectContainsPoint(backbutton.frame, location))
    {
        UIDynamicAnimator *animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
        
        UIGravityBehavior *gravityBeahvior = [[UIGravityBehavior alloc] initWithItems:@[self.backbutton]];
        [animator addBehavior:gravityBeahvior];
        
        UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] initWithItems:@[backbutton]];
        // Creates collision boundaries from the bounds of the dynamic animator's
        // reference view (self.view).
        collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
        collisionBehavior.collisionDelegate = self;
        [animator addBehavior:collisionBehavior];
        
        self.animator = animator;

        
        
    }
    
}
- (void)collisionBehavior:(UICollisionBehavior *)behavior beganContactForItem:(id<UIDynamicItem>)item
   withBoundaryIdentifier:(id<NSCopying>)identifier atPoint:(CGPoint)p {
    
    NSLog(@"Boundary contact occurred - %@", identifier);
    
    UIView* view = (UIView*)item;
    [UIView animateWithDuration:0.3 animations:^{
        
        
        if (!_firstContact)
        {
            _firstContact = YES;
            //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            //MainFaceViewController *myVC = (MainFaceViewController *)[storyboard instantiateViewControllerWithIdentifier:@"main"];
           // [self.navigationController presentViewController:myVC animated:YES completion:nil];
            
            
        }
 
    }];

}
*/
@end
