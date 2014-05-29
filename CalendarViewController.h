//
//  CalendarViewController.h
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 10/28/12.
//  Copyright (c) 2012 Dominic Kynkor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EventKitUI/EventKitUI.h>
#import <EventKit/EventKit.h>

@interface CalendarViewController : UIViewController <EKEventEditViewDelegate>
- (IBAction)createEvent:(id)sender;

@end
