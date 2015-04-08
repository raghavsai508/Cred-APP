//
//  UserCalendarTableViewController.h
//  Hackathon
//
//  Created by Raghav Sai on 2/12/15.
//  Copyright (c) 2015 handson. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ServiceProtocol

@optional

- (void)serviceCallCompletedWithResponseObject:(id)response;
- (void)serviceCallCompletedWithError:(NSError *)error;

@end

@interface ServiceManager : NSObject

+ (ServiceManager *)defaultManager;

- (void)serviceCallWithURL:(NSString *)URL andParameters:(NSObject *)params;

@property (nonatomic,weak) id<ServiceProtocol> serviceDelegate;

@end

