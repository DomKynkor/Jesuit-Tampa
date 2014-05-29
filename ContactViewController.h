//
//  ContactViewController.h
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 10/26/12.
//  Copyright (c) 2012 Dominic Kynkor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ContactViewController : UIViewController <MFMailComposeViewControllerDelegate>

- (IBAction)openMail:(id)sender;

@end
