//
//  MapViewViewController.h
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 1/21/14.
//  Copyright (c) 2014 Dominic Kynkor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/Mapkit.h>

@interface MapViewViewController : UIViewController {
    
    MKMapView *mapView;
    
    
}
@property (nonatomic,retain) IBOutlet MKMapView *mapView;

@end