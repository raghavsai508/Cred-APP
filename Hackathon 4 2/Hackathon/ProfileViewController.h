//
//  ProfileViewController.h
//  Hackathon
//
//  Created by handson MacPro on 2/12/15.
//  Copyright (c) 2015 handson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imgProfilePic;
@property (strong, nonatomic) IBOutlet UIImageView *imgProfileRank;
@property (strong, nonatomic) IBOutlet UILabel *lblUsername;
@property (strong, nonatomic) IBOutlet UILabel *lblCreatedCount;
@property (strong, nonatomic) IBOutlet UILabel *lblAttendedCount;
@property (strong, nonatomic) IBOutlet UITextView *lblUserDescription;


@end
