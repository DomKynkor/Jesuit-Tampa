//
//  MainFaceViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 11/5/12.
//  Copyright (c) 2012 Dominic Kynkor. All rights reserved.
//

#import "MainFaceViewController.h"
#import "NewsViewController.h"
#import "PMenuViewController.h"
#import "SupportViewController.h"
#import "PhoneEmailViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface MainFaceViewController ()

@end

@implementation MainFaceViewController

@synthesize gradientView,buttonList,height,width,touchAble,upAble,downAble,viewPushed;
double a,b,c;
int buttonListSize;
CGFloat height, width;
- (void)viewDidLoad
{
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    //Background Setup
    [super viewDidLoad];
    //Retrieve Size of Screen
    width = screenSize.width;//X Value
    height= screenSize.height;//Y Value
    self.gradientView = [[CircleGradient alloc]initWithFrame:CGRectMake(-height/8, height*3/8, (height/4), (height/4))];
    //Side Note: (X , Y, Width, Height)
    [self.view addSubview:self.gradientView];
    //Button Start Setup
    a=height/2;
    //a moves function upward
     b=200;
    //makes wider as goes up
    c=1.028;
    //makes thinner
 
   
    
    
    //Initiating Buttons
        LabelButtons *button1 = [[LabelButtons alloc]init];
        LabelButtons *button2 = [[LabelButtons alloc]init];
        LabelButtons *button3 = [[LabelButtons alloc]init];
        LabelButtons *button4 = [[LabelButtons alloc]init];
        LabelButtons *button5 = [[LabelButtons alloc]init];
        LabelButtons *button6 = [[LabelButtons alloc]init];
        LabelButtons *button7 = [[LabelButtons alloc]init];
        LabelButtons *button8 = [[LabelButtons alloc]init];
        LabelButtons *button9 = [[LabelButtons alloc]init];
        LabelButtons *button10 = [[LabelButtons alloc]init];
        LabelButtons *button11 = [[LabelButtons alloc]init];
        LabelButtons *button12 = [[LabelButtons alloc]init];
        LabelButtons *button13 = [[LabelButtons alloc]init];
    
        //Setting Button Array
        self.buttonList = [[NSMutableArray alloc] initWithObjects:button1.labelImage,button2.labelImage,button3.labelImage,button4.labelImage,button5.labelImage,button6.labelImage,button7.labelImage,button8.labelImage,button9.labelImage,button10.labelImage,button11.labelImage,button12.labelImage,button13.labelImage,nil];
    
    
    buttonListSize=(int)[buttonList count];
    
    //Naming Buttons
        button13.label.text=@"Campus Map";
        button12.label.text=@"Students";
        button11.label.text=@"Parents";
        button10.label.text=@"Athletics";
        button9.label.text=@"Alumni";
        button8.label.text=@"Contact Us";
        button7.label.text=@"Admission";
        button6.label.text=@"Website";
        button5.label.text=@"Calendar";
        button4.label.text=@"News Section";
        button3.label.text=@"Support Jesuit";
        button2.label.text=@"Media Links";
        button1.label.text=@"Audio & Prayers";
    
        //Counting # of objects in array
        NSLog(@"%d",buttonListSize);
        int buttonSpace=height/buttonListSize;
    
        //Accounting for boundaries
        CGFloat tempScreenHeight= height-(buttonSpace);
    
        //Assign a Y value based on index and screen size and then give corresponding x value
        int tempButtonSpace=1+(tempScreenHeight/buttonListSize);
        for (int i=0; i<buttonListSize; i++) {
            UIImageView *buttonView=[buttonList objectAtIndex:i];
            double buttonListY=(i+1)*tempButtonSpace;
            double buttonListX=pow(c,(-0.4*((buttonListY-a)*(buttonListY-a))/(b))+180);
            NSLog(@"%f",buttonListX);
            
            //i+1 to prevent from hitting the top
            
            
            buttonView.frame=CGRectMake(buttonListX, buttonListY, 0, 0);
            
            [self.view addSubview:[buttonList objectAtIndex:i]];
            
            width=80*(height/(abs((height/2)-buttonView.frame.origin.y)+height/2));
            CGFloat buttonHeight=width/7;
            
            NSLog(@"%f", width);
            NSLog(@"%f", height);
            
            buttonView.alpha=(height/12)/(abs((height/2)-buttonView.frame.origin.y)+1);
            
            NSLog(@"%f", buttonView.alpha);
            
            buttonView.frame=CGRectMake(buttonListX, buttonListY, width, buttonHeight);
            
            
        }
        touchAble=TRUE;
        upAble=TRUE;
        downAble=TRUE;
        viewPushed=TRUE;
    

}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //determine screen size
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenHeight = screenSize.height;
    
    //determine touch location
    UITouch *touch=[[event allTouches]anyObject];
    CGPoint location=[touch locationInView:self.view];
    UIImageView *topButton=[buttonList objectAtIndex:0];
    UIImageView *downButton=[buttonList objectAtIndex:12];
    NSLog(@"%f", topButton.center.y);
    NSLog(@"%f", downButton.center.y);
    NSLog(@"%f", screenHeight/2);
    NSLog(@"%f", height/2);
    //Check if touch is able to happen if on boundaries
    if (topButton.center.y>screenHeight/2) {
        downAble=FALSE;
    }
    if (downButton.center.y<screenHeight/2) {
       upAble=FALSE;
    }
    if (topButton.center.y<screenHeight/2) {
        downAble=TRUE;
    }
    if (downButton.center.y>screenHeight/2) {
        upAble=TRUE;
    }
    
    //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    

    UIImageView *b0=[buttonList objectAtIndex:0];
    
    if (b0.alpha>0.75 && CGRectContainsPoint(b0.frame, location))
    {
        
        viewPushed=FALSE;
        [self performSegueWithIdentifier: @"AudioMenu" sender: self];
    }
    UIImageView *b1=[buttonList objectAtIndex:1];
    if (b1.alpha>0.75 && CGRectContainsPoint(b1.frame, location))
    {
        
        viewPushed=FALSE;
        [self performSegueWithIdentifier: @"MediaLinks" sender: self];
        
    }
    UIImageView *b2=[buttonList objectAtIndex:2];
    if (b2.alpha>0.75 && CGRectContainsPoint(b2.frame, location))
    {
        
        viewPushed=FALSE;
        [self performSegueWithIdentifier: @"Support" sender: self];
        
    }
    UIImageView *b3=[buttonList objectAtIndex:3];
    if (b3.alpha>0.75 && CGRectContainsPoint(b3.frame, location))
    {
        
        viewPushed=FALSE;
        [self performSegueWithIdentifier: @"News" sender: self];
        
    }
    UIImageView *b4=[buttonList objectAtIndex:4];
    if (b4.alpha>0.75 && CGRectContainsPoint(b4.frame, location))
    {
        
        viewPushed=FALSE;
        [self performSegueWithIdentifier: @"Calendar" sender: self];
        
    }
    UIImageView *b5=[buttonList objectAtIndex:5];
    if (b5.alpha>0.75 && CGRectContainsPoint(b5.frame, location))
    {
        
        viewPushed=FALSE;
        [self performSegueWithIdentifier: @"Website" sender: self];
        
    }
    UIImageView *b6=[buttonList objectAtIndex:6];
    if (b6.alpha>0.75 && CGRectContainsPoint(b6.frame, location))
    {
        viewPushed=FALSE;
        [self performSegueWithIdentifier: @"Admissions" sender: self];
    }
    UIImageView *b7=[buttonList objectAtIndex:7];
    if (b7.alpha>0.75 && CGRectContainsPoint(b7.frame, location))
    {
        viewPushed=FALSE;
        [self performSegueWithIdentifier: @"Contact" sender: self];
    }
    UIImageView *b8=[buttonList objectAtIndex:8];
    if (b8.alpha>0.75 && CGRectContainsPoint(b8.frame, location))
    {
        viewPushed=FALSE;
        [self performSegueWithIdentifier: @"Alumni" sender: self];
    }
    UIImageView *b9=[buttonList objectAtIndex:9];
    if (b9.alpha>0.75 && CGRectContainsPoint(b9.frame, location))
    {
        viewPushed=FALSE;
        [self performSegueWithIdentifier: @"Athletics" sender: self];
    }
    UIImageView *b10=[buttonList objectAtIndex:10];
    if (b10.alpha>0.75 && CGRectContainsPoint(b10.frame, location))
    {
        viewPushed=FALSE;
        [self performSegueWithIdentifier: @"Parents" sender: self];
    }
    UIImageView *b11=[buttonList objectAtIndex:11];
    if (b11.alpha>0.75 && CGRectContainsPoint(b11.frame, location))
    {
        viewPushed=FALSE;
        [self performSegueWithIdentifier: @"Students" sender: self];
    }
    UIImageView *b12=[buttonList objectAtIndex:12];
    if (b12.alpha>0.75 && CGRectContainsPoint(b12.frame, location))
    {
        viewPushed=FALSE;
        [self performSegueWithIdentifier: @"Map" sender: self];
    }
    /*
    button13.label.text=@"Unnamed";
    button12.label.text=@"Students";
    button11.label.text=@"Parents";
    button10.label.text=@"Athletics";
    button9.label.text=@"Alumni";
    button8.label.text=@"Contact Us";
    button7.label.text=@"Admission";
    button6.label.text=@"Website";
    button5.label.text=@"Calendar";
    button4.label.text=@"News Section";
    button3.label.text=@"Support Jesuit";
    button2.label.text=@"Media Links";
    button1.label.text=@"Unnamed";
    */
    
    //
    //
    //
    if (viewPushed==TRUE) {
        
    if (touchAble==TRUE)
    {
       if (upAble==TRUE)
       {
           
            if (location.y<screenHeight/2)
            {
                UIImageView *buttonView=[buttonList objectAtIndex:0];
                upPrevYvalue = buttonView.frame.origin.y;

                upTimer=[NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(moveObjectsUp) userInfo:nil repeats:YES];

                [upTimer fire];
                                
            }
       }
       if (downAble==TRUE)
       {
           
            if (location.y>screenHeight/2)
            {
                UIImageView *buttonView=[buttonList objectAtIndex:12];
                downPrevYvalue =buttonView.frame.origin.y;

                downTimer=[NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(moveObjectsDown) userInfo:nil repeats:YES];
                [downTimer fire];
                
            }
       }
   }
}
    viewPushed=TRUE;
}
//Moves all objects up
-(void)moveObjectsUp
{
    //determine screen size
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenHeight = screenSize.height;
    
    touchAble=FALSE;
    
    int buttonSpace=screenHeight/buttonListSize;
    CGFloat tempScreenHeight= screenHeight-(buttonSpace);
    int tempButtonSpace=tempScreenHeight/buttonListSize;
    double movementDegree=tempButtonSpace+1;
    for (int i=0; i<[self.buttonList count]; i++)
    {
        UIImageView *buttonView=[buttonList objectAtIndex:i];
        //Shrink Y value of all buttons
        CGPoint buttonViewOrigin=buttonView.frame.origin;
        buttonViewOrigin.y=buttonView.frame.origin.y-(movementDegree/6);
        //double buttonListY=(buttonViewOrigin.y+1)*tempButtonSpace;
        double buttonListX=pow(c,(-0.4*((buttonViewOrigin.y-a)*(buttonViewOrigin.y-a))/(b))+180);
        buttonView.frame=CGRectMake(buttonListX, buttonViewOrigin.y, 0, 0);
        width=80*(screenHeight/(abs((screenHeight/2)-buttonView.frame.origin.y)+screenHeight/2));
        height=width/7;
        buttonView.alpha=(screenHeight/12)/(abs((screenHeight/2)-buttonView.frame.origin.y)+1);
        buttonView.frame=CGRectMake(buttonListX, buttonView.frame.origin.y, width, height);
    }
    UIImageView *buttonViewDown=[buttonList objectAtIndex:0];
    if (buttonViewDown.frame.origin.y<upPrevYvalue-movementDegree)
    {
        [upTimer invalidate];
        NSLog(@"Invalidate");
        touchAble=TRUE;
    }
    
}
//Moves all objects down
-(void)moveObjectsDown
{
    //determine screen size
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenHeight = screenSize.height;
    
    touchAble=FALSE;
    
    int buttonSpace=screenHeight/buttonListSize;
    CGFloat tempScreenHeight= screenHeight-(buttonSpace);
    int tempButtonSpace=tempScreenHeight/buttonListSize;
    double movementDegree=tempButtonSpace+1;
    for (int i=0; i<[self.buttonList count]; i++)
    {
         UIImageView *buttonView=[buttonList objectAtIndex:i];
        //Shrink Y value of all buttons
        CGPoint buttonViewOrigin=buttonView.frame.origin;
        buttonViewOrigin.y=buttonView.frame.origin.y+(movementDegree/6);
        //double buttonListY=(buttonViewOrigin.y+1)*tempButtonSpace;
        double buttonListX=pow(c,(-0.4*((buttonViewOrigin.y-a)*(buttonViewOrigin.y-a))/(b))+180);
        buttonView.frame=CGRectMake(buttonListX, buttonViewOrigin.y, 0, 0);
        width=80*(screenHeight/(abs((screenHeight/2)-buttonView.frame.origin.y)+screenHeight/2));
        height=width/7;
        buttonView.alpha=(screenHeight/12)/(abs((screenHeight/2)-buttonView.frame.origin.y)+1);
        buttonView.frame=CGRectMake(buttonListX, buttonView.frame.origin.y, width, height);
        
    }
    UIImageView *buttonViewDown=[buttonList objectAtIndex:12];
    if (buttonViewDown.frame.origin.y>downPrevYvalue+movementDegree)
        {
            [downTimer invalidate];
            NSLog(@"Invalidate");
            touchAble=TRUE;
        }
        
}

- (IBAction) goToRoot: (UIStoryboardSegue*) segue
{
    NSLog(@"Called goToRoot: unwind action");
}

@end
