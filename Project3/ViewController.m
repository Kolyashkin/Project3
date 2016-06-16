//
//  ViewController.m
//  Project3
//
//  Created by Nickolas McDaniels on 6/14/16.
//  Copyright © 2016 Nickolas Donnell. All rights reserved.
//

#import "ViewController.h"
#import "Event.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)pressedAddButton:(UIButton *)sender {
    Event *newEvent = [[Event alloc] init];
    
    newEvent.name = _nameField.text;
    newEvent.location = _locationField.text;
    newEvent.date = [_eventDatePicker date];
    newEvent.startTime = [_startTimePicker date];
    newEvent.endTime = [_endTimePicker date];
    
    
    [self.delegate pressedAddButton:newEvent];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
