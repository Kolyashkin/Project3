//
//  DetailViewController.h
//  Project3
//
//  Created by Nickolas McDaniels on 6/13/16.
//  Copyright © 2016 Nickolas Donnell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UITableView *infoTable;

@property (strong, nonatomic) NSMutableArray *firstSection; // For grouping info into the first section (name and location).

@property (strong, nonatomic) NSMutableArray *secondSection; // For grouping together start and end times.
@end

