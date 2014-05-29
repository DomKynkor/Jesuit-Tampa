//
//  MapViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 10/26/12.
//  Copyright (c) 2012 Dominic Kynkor. All rights reserved.
//

#import "MapViewController.h"


#define METERS_PER_MILE 1609.344

enum
{
    kCityAnnotationIndex = 0,
    kBridgeAnnotationIndex
};


@interface MapViewController ()

@end

@implementation MapViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(IBAction)OpenMaps:(id)sender{
    UIApplication *app = [UIApplication sharedApplication];
    [app openURL:[NSURL URLWithString:@"http://maps.google.com/maps?q=Paris"]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
  
    
    [super dealloc];

}


@end
