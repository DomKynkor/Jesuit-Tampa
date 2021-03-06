//
//  MapViewAnnotation.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 11/9/12.
//  Copyright (c) 2012 Dominic Kynkor. All rights reserved.
//

#import "MapViewAnnotation.h"

@implementation MapViewAnnotation

@synthesize title, coordinate;

- (id)initWithTitle:(NSString *)ttl andCoordinate:(CLLocationCoordinate2D)c2d {
	[super init];
	title = ttl;
	coordinate = c2d;
	return self;
}

- (void)dealloc {
	[title release];
	[super dealloc];
}

@end