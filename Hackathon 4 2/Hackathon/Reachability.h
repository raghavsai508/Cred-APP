//
//  Reachability.h
//  Hackathon
//
//  Created by Raghav Sai on 2/12/15.
//  Copyright (c) 2015 handson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Reachability : NSObject

+ (void)monitorNetworkAndPostReachablityNotification;

@end
