//
//  MapViewViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 1/21/14.
//  Copyright (c) 2014 Dominic Kynkor. All rights reserved.
//

#import "MapViewViewController.h"
#import "MapViewAnnotations.h"

@interface MapViewViewController ()

@end

#define JHS_Longitude -82.49975;
#define JHS_Lattitude 27.98691;
#define Span .002f;
@implementation MapViewViewController

@synthesize mapView;

// When the view loads
- (void)viewDidLoad
{
    mapView.mapType=MKMapTypeSatellite;
	CLLocationCoordinate2D chapel;
	chapel.latitude = (double) 27.98691;
	chapel.longitude = (double) -82.49975;
	MapViewAnnotations *chapela = [[MapViewAnnotations alloc] initWithTitle:@"Chapel" andCoordinate:chapel];
	[self.mapView addAnnotation:chapela];
	[chapela release];
    CLLocationCoordinate2D gym;
	gym.latitude = (double) 27.9866;
	gym.longitude = (double) -82.4985555;
	MapViewAnnotations *gyma = [[MapViewAnnotations alloc] initWithTitle:@"Gym" andCoordinate:gym];
	[self.mapView addAnnotation:gyma];
	[gyma release];
    CLLocationCoordinate2D library;
	library.latitude = (double) 27.9863;
	library.longitude = (double) -82.49975;
	MapViewAnnotations *librarya = [[MapViewAnnotations alloc] initWithTitle:@"Library" andCoordinate:library];
	[self.mapView addAnnotation:librarya];
	[chapela release];
    CLLocationCoordinate2D Track;
	Track.latitude = (double) 27.9862;
	Track.longitude = (double) -82.4985555;
	MapViewAnnotations *Tracka = [[MapViewAnnotations alloc] initWithTitle:@"Track" andCoordinate:Track];
	[self.mapView addAnnotation:Tracka];
	[gyma release];
    CLLocationCoordinate2D fb;
	fb.latitude = (double) 27.9855;
	fb.longitude = (double) -82.4987;
	MapViewAnnotations *fba = [[MapViewAnnotations alloc] initWithTitle:@"Football Field" andCoordinate:fb];
	[self.mapView addAnnotation:fba];
	[fba release];
    CLLocationCoordinate2D ba;
	ba.latitude = (double) 27.9855;
	ba.longitude = (double) -82.5002;
	MapViewAnnotations *baa = [[MapViewAnnotations alloc] initWithTitle:@"Baseball Field" andCoordinate:ba];
	[self.mapView addAnnotation:baa];
	[baa release];
    CLLocationCoordinate2D b1;
	b1.latitude = (double) 27.9873;
	b1.longitude = (double) -82.5;
	MapViewAnnotations *b1a = [[MapViewAnnotations alloc] initWithTitle:@"Building 1" andCoordinate:b1];
	[self.mapView addAnnotation:b1a];
	[b1a release];
    
    CLLocationCoordinate2D b2;
	b2.latitude = (double) 27.9866;
	b2.longitude = (double) -82.5;
	MapViewAnnotations *b2a = [[MapViewAnnotations alloc] initWithTitle:@"Building 2" andCoordinate:b2];
	[self.mapView addAnnotation:b2a];
	[b2a release];
    
    CLLocationCoordinate2D b3;
	b3.latitude = (double) 27.9866;
	b3.longitude = (double) -82.4997;
	MapViewAnnotations *b3a = [[MapViewAnnotations alloc] initWithTitle:@"Building 3" andCoordinate:b3];
	[self.mapView addAnnotation:b3a];
	[b3a release];
    
    CLLocationCoordinate2D b4;
	b4.latitude = (double) 27.987;
	b4.longitude = (double) -82.4987;
	MapViewAnnotations *b4a = [[MapViewAnnotations alloc] initWithTitle:@"Building 4" andCoordinate:b4];
	[self.mapView addAnnotation:b4a];
	[b4a release];
    
    CLLocationCoordinate2D b5;
	b5.latitude = (double) 27.98691;
	b5.longitude = (double) -82.5005;
	MapViewAnnotations *b5a = [[MapViewAnnotations alloc] initWithTitle:@"Building 5" andCoordinate:b5];
	[self.mapView addAnnotation:b5a];
	[b5a release];

    
    CLLocationCoordinate2D lunch;
	lunch.latitude = (double) 27.9873;
	lunch.longitude = (double) -82.4997;
	MapViewAnnotations *luncha = [[MapViewAnnotations alloc] initWithTitle:@"Cafeteria" andCoordinate:lunch];
	[self.mapView addAnnotation:luncha];
	[luncha release];
    
    
    
    
    
    
    MKCoordinateRegion myRegion;
    
    CLLocationCoordinate2D center;
    center.latitude=JHS_Lattitude;
    center.longitude=JHS_Longitude;
    
    MKCoordinateSpan span;
    span.latitudeDelta=Span;
    span.longitudeDelta=Span;
    
    myRegion.center=center;
    myRegion.span=span;
    
    [mapView setRegion:myRegion animated:YES];
}
// When a map annotation point is added, zoom to it (1500 range)
- (void)mapView:(MKMapView *)mv didAddAnnotationViews:(NSArray *)views
{
	MKAnnotationView *annotationView = [views objectAtIndex:1];
	id <MKAnnotation> mp = [annotationView annotation];
	MKCoordinateRegion region;
	[mv setRegion:region animated:YES];
	[mv selectAnnotation:mp animated:YES];
}

// Received memory warning
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

// If the view unloads, release the map view
- (void)viewDidUnload {
	[super viewDidUnload];
	[mapView release];
	mapView = nil;
}

// Deallocations
- (void)dealloc {
	[mapView release];
    [super dealloc];
}

@end

