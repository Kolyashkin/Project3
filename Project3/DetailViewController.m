//
//  DetailViewController.m
//  Project3
//
//  Created by Nickolas McDaniels on 6/13/16.
//  Copyright © 2016 Nickolas Donnell. All rights reserved.
//

#import "DetailViewController.h"
#import "Event.h"
@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;   // My idea is to group Name and location, then date by itself, then lastly start and end times together.
}               // Hence, three sections.

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0)
    {
        return 2;   // Name and loc
    }
    if (section == 1) {
        return 1;   // Date
    }
    if (section == 2)
    {
        return 2;   // Start and End
    }
    return 0;
}

// I'm still working on pretty-ing this up, maybe headers or different colored backgrounds.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell2";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    Event *thisEvent = self.detailItem; // detailItem was called object in MasterViewController.m and gets passed into this view as an Event object.
    
    // These two are grouped together for sectioning
    [_firstSection addObject:thisEvent.name];
    [_firstSection addObject:thisEvent.location];
    
    // And these two as well
    [_secondSection addObject:thisEvent.startTime];
    [_secondSection addObject:thisEvent.endTime];
    
    // This part used to transform the Date to a String for use with setting the cell.textLabel.text
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateString = [dateFormatter stringFromDate:thisEvent.date];
    
    if (indexPath.section == 0)
        cell.textLabel.text = [_firstSection objectAtIndex:indexPath.row];
    
    if (indexPath.section == 1)
        cell.textLabel.text = dateString;

    if (indexPath.section == 2)
        cell.textLabel.text = [_secondSection objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _firstSection = [[NSMutableArray alloc] init];
    _secondSection = [[NSMutableArray alloc] init];
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
