//
//  MapViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 11/1/12.
//  Copyright (c) 2012 Dominic Kynkor. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()


@end

@implementation MapViewController


@end



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
	// Do any additional setup after loading the view.
    NSBundle *bundle=[NSBundle mainBundle];
    NSURL *plistURL=[bundle URLForResource:@"formulas" withExtension:@"plist"];
    NSDictionary *dictionary=[NSDictionary dictionaryWithContentsOfURL:plistURL];
    self.formulaMethod=dictionary;
    NSArray *components=[self.formulaMethod allKeys];
    NSArray *sorted =[components sortedArrayUsingSelector:@selector(compare:)];
    self.arraypicker=sorted;
    NSString *selected=[self.arraypicker objectAtIndex:0];
    NSArray *array=[formulaMethod objectForKey:selected];
    self.inputMethod=array;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
   
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma mark picker view methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
{
    return 2;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *selected=[self.arraypicker objectAtIndex:row];
    if(component ==0){
        NSArray *array=[formulaMethod objectForKey:selected];
        self.inputMethod=array;
        pickerlabel.text=selected;
    }
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
{
    if (component == 0) {
        return [arraypicker count];
    }
    return [inputMethod count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
{
    if (component == 0) {
        return [arraypicker objectAtIndex:row];
    }
    return [inputMethod objectAtIndex:row];
}

-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
    if (component == 1){
        return 160;
    }
    return 110;
}

- (IBAction)GetMap:(id)sender {
    UIApplication *app = [UIApplication sharedApplication];
    [app openURL:[NSURL URLWithString:@"http://maps.google.com/maps?saddr=My-Location&daddr=Tampa"]];
}
@end
