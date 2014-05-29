//
//  PhoneEmailViewController.h
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 12/8/12.
//  Copyright (c) 2012 Dominic Kynkor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface PhoneEmailViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate, MFMailComposeViewControllerDelegate, UITextViewDelegate>
{
	IBOutlet UITextView *message;
	IBOutlet UIPickerView *pickerView;
	NSMutableArray *placeNames;
}
- (IBAction)Call:(id)sender;
- (IBAction)openMail:(id)sender;

@property (retain, nonatomic) IBOutlet UILabel *teacherselection;
@property (retain, nonatomic) IBOutlet UILabel *email;
@property (retain, nonatomic) IBOutlet UILabel *ext;
@property (retain, nonatomic) IBOutlet UITextField *textfield;
@property (nonatomic, retain) IBOutlet UITextView *textview;
@end

