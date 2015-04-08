//
//  HomeTableCell.h
//  Hackathon
//
//  Created by Raghav Sai on 2/12/15.
//  Copyright (c) 2015 handson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblEventTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblDateOfEvent;
@property (weak, nonatomic) IBOutlet UILabel *lblVenue;
@property (weak, nonatomic) IBOutlet UIButton *btnJoin;
@property (strong, nonatomic) IBOutlet UIImageView *imgCategoryView;
@property (strong, nonatomic) IBOutlet UILabel *lblCount;
@property (strong, nonatomic) IBOutlet UIView *attendersView;
@property (strong, nonatomic) IBOutlet UIImageView *imgHumanIcon;

- (void)designUI:(NSInteger)category;

@end
