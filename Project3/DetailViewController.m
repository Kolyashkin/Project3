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

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell2";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    Event *thisEvent = self.detailItem; // detailItem was called object in MasterViewController.m and gets passed into this view as an Event object.
    
    // These two are grouped together for sectioning
    [_firstSection addObject:thisEvent.name];
    [_firstSection addObject:thisEvent.location];
    
    // This part used to transform the Date to a String for use with setting the cell.textLabel.text
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateString = [dateFormatter stringFromDate:thisEvent.date];
    
    [dateFormatter setDateFormat:@"HH:mm"];
    NSString *startTimeString = [dateFormatter stringFromDate:thisEvent.startTime];
    
    NSString *endTimeString = [dateFormatter stringFromDate:thisEvent.endTime];
    
    [_secondSection addObject:startTimeString];
    [_secondSection addObject:endTimeString];
    
    
    if (indexPath.section == 0)
    {
        if (indexPath.row == 0)
            cell.textLabel.text = [@"Event: " stringByAppendingString:[_firstSection objectAtIndex:indexPath.row]];
        else
            cell.textLabel.text = [@"Location: " stringByAppendingString:[_firstSection objectAtIndex:indexPath.row]];
    }
    if (indexPath.section == 1)
    {
        cell.textLabel.text = [@"Date: " stringByAppendingString:dateString];
        //cell.backgroundColor = [UIColor cyanColor];
    }
    if (indexPath.section == 2)
    {
        if (indexPath.row == 0)
        {
            cell.textLabel.text = [@"Start time: " stringByAppendingString:[_secondSection objectAtIndex:indexPath.row]];
        }
        else
        {
            cell.textLabel.text = [@"End time: " stringByAppendingString:[_secondSection objectAtIndex:indexPath.row]];
        }
        
    }
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
