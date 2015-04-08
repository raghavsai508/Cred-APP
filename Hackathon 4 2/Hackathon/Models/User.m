//
//  User.m
//  Hackathon
//
//  Created by handson MacPro on 2/12/15.
//  Copyright (c) 2015 handson. All rights reserved.
//

#import "User.h"

@implementation User

+ (User *)user
{
    static User *user;
    @synchronized(self)
    {
        if (!user)
            user = [[User alloc]init];
        return user;
    }
    
}

@end
