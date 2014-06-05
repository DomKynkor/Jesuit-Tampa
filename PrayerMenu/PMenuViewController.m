//
//  PMenuViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 4/13/14.
//  Copyright (c) 2014 Dominic Kynkor. All rights reserved.
//

#import "PMenuViewController.h"
#import "PrayerViewController.h"
#import "AudioViewController.h"
#import "MainFaceViewController.h"
#import "BackButton.h"

@interface PMenuViewController ()<UICollisionBehaviorDelegate>


@end
UIDynamicAnimator* _animator;
UIGravityBehavior* _gravity;
UICollisionBehavior* _collision;
@implementation PMenuViewController

@synthesize backbutton;
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
    [super viewDidLoad];
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenWidth = screenSize.width;//X Value
    CGFloat screenHeight = screenSize.height;//Y Value
    //self.backbutton = [[BackButton alloc]initWithFrame:CGRectMake(6.5*screenWidth/8, screenHeight/20, (screenHeight/10), (screenHeight/10))];
    //Side Note: (X , Y, Width, Height)
    //[self.view addSubview:self.backbutton];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/*- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //determine screen size
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    //CGFloat screenHeight = screenSize.height;
    
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
    //[UIView animateWithDuration:0.3 animations:^{
        [self performSegueWithIdentifier: @"unwindAudioMenu" sender: self];
        if (!_firstContact)
         {
         _firstContact = YES;
         //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
         //MainFaceViewController *myVC = (MainFaceViewController *)[storyboard instantiateViewControllerWithIdentifier:@"main"];
         // [self.navigationController presentViewController:myVC animated:YES completion:nil];
         
         
         }
 
    //}];
}*/
- (IBAction)unwind:(UIStoryboardSegue *)unwindSegue
{
    UIViewController* sourceViewController = unwindSegue.sourceViewController;
    
    if ([sourceViewController isKindOfClass:[PrayerViewController class]])
    {
        NSLog(@"Coming from BLUE!");
    }
    else if ([sourceViewController isKindOfClass:[AudioViewController class]])
    {
        NSLog(@"Coming from GREEN!");
    }
}
@end
