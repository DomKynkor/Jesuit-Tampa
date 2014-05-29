//
//  RootViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 10/26/12.
//  Copyright (c) 2012 Dominic Kynkor. All rights reserved.
//

#import "RootViewController.h"
#import "RSSEntry.h"
@interface RootViewController ()

@end

@implementation RootViewController

// After @implementation
@synthesize allEntries = _allEntries;

// Add new method
- (void)addRows {
    RSSEntry *entry1 = [[[RSSEntry alloc] initWithBlogTitle:@"1"
                                               articleTitle:@"1"
                                                 articleUrl:@"1"
                                                articleDate:[NSDate date]] autorelease];
    RSSEntry *entry2 = [[[RSSEntry alloc] initWithBlogTitle:@"2"
                                               articleTitle:@"2"
                                                 articleUrl:@"2"
                                                articleDate:[NSDate date]] autorelease];
    RSSEntry *entry3 = [[[RSSEntry alloc] initWithBlogTitle:@"3"
                                               articleTitle:@"3"
                                                 articleUrl:@"3"
                                                articleDate:[NSDate date]] autorelease];
    
    [_allEntries insertObject:entry1 atIndex:0];
    [_allEntries insertObject:entry2 atIndex:0];
    [_allEntries insertObject:entry3 atIndex:0];
}

// Uncomment viewDidLoad and make it look like the following
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Feeds";
    self.allEntries = [NSMutableArray array];
    [self addRows];
}

// Modify tableView:cellForRowAtIndexPath below like the following
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
    }
    
    RSSEntry *entry = [_allEntries objectAtIndex:indexPath.row];
    
    NSDateFormatter * dateFormatter = [[[NSDateFormatter alloc] init] autorelease];
    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    NSString *articleDateString = [dateFormatter stringFromDate:entry.articleDate];
    
    cell.textLabel.text = entry.articleTitle;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ - %@", articleDateString, entry.blogTitle];
    
    return cell;
}
@end
