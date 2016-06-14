//
//  Event.m
//  Project3
//
//  Created by Nickolas McDaniels on 6/13/16.
//  Copyright © 2016 Nickolas Donnell. All rights reserved.
//

#import "Event.h"

@implementation Event
+(Event *)newEvent: (NSString *)name location:(NSString *)location date:(NSDate *)date startTime:(NSString *)startTime
           endTime:(NSString *)endTime{
    Event *event = [[Event alloc] init];
    event.name = name;
    event.location = location;
    event.date = date;
    event.startTime = startTime;
    event.endTime = endTime;
    
    return event;
}

@end
