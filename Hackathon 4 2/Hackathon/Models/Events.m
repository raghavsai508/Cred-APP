//
//  Events.m
//  Hackathon
//
//  Created by handson MacPro on 2/12/15.
//  Copyright (c) 2015 handson. All rights reserved.
//

#import "Events.h"

@implementation Events

+ (Events *)events
{
    static Events *events;
    @synchronized(self)
    {
        if (!events)
            events = [[Events alloc] init];
        return events;
    }

}

@end
