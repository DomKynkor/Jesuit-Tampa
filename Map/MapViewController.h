//
//  MapViewController.h
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 11/1/12.
//  Copyright (c) 2012 Dominic Kynkor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapViewController : UIViewController
    {
        NSDictionary *formulaMethod;
        NSArray *arraypicker;
        NSArray *inputMethod;
        UIPickerView *pickerView;
        IBOutlet UILabel *answer;
        IBOutlet UILabel *variableName;
        IBOutlet UILabel *variableName2;
        UIImageView * imageView;
        UIButton * choosePhotoBtn;
        
    }
    -(IBAction) calculate;
    @property (nonatomic, retain) IBOutlet UIPickerView *pickerView;


    @end
