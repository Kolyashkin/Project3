//
//  ViewController.h
//  Project3
//
//  Created by Nickolas McDaniels on 6/14/16.
//  Copyright © 2016 Nickolas Donnell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"

@protocol ViewControllerDelegate <NSObject>

- (void)pressedAddButton:(Event*)newEvent;

@end
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (nonatomic, strong) IBOutlet UITextField *locationField;
@property (nonatomic, strong) IBOutlet UIDatePicker *eventDatePicker;
@property (nonatomic, strong) IBOutlet UIDatePicker *startTimePicker;
@property (nonatomic, strong) IBOutlet UIDatePicker *endTimePicker;

@property(weak, nonatomic) id<ViewControllerDelegate>delegate;

@end
