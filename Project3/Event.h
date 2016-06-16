//
//  Event.h
//  Project3
//
//  Created by Nickolas McDaniels on 6/13/16.
//  Copyright © 2016 Nickolas Donnell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

+(Event *)newEvent: (NSString *)name location:(NSString *)location date:(NSDate *)date startTime:(NSString *)startTime
    endTime:(NSString *)endTime;


@end
