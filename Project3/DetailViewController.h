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
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

