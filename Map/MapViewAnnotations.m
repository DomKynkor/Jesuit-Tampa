//
//  MapViewAnnotations.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 1/21/14.
//  Copyright (c) 2014 Dominic Kynkor. All rights reserved.
//

#import "MapViewAnnotations.h"

@implementation MapViewAnnotations

@synthesize title, coordinate;

- (id)initWithTitle:(NSString *)ttl andCoordinate:(CLLocationCoordinate2D)c2d {
	title = ttl;
	coordinate = c2d;
	return self;
}

@end