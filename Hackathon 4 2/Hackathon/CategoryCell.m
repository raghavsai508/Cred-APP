//
//  HomeTableCell.m
//  Hackathon
//
//  Created by Raghav Sai on 2/12/15.
//  Copyright (c) 2015 handson. All rights reserved.
//

#import "CategoryCell.h"

@interface CategoryCell ()


@end


@implementation CategoryCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
#pragma design UI
- (void)designUI:(NSInteger)category
{
    self.lblEventTitle.textColor = [UIColor colorWithRed:52/255.0f green:73/255.0f blue:94/255.0f alpha:1.0];
    self.lblCount.text = @"100";
    if(category == 0)
    {
        [self designSportsCategory];
    }
    else if (category == 1)
    {
        [self designEducationCategory];
    }
    else if (category == 2)
    {
        [self designGreekCategory];
    }
    else if (category == 3)
    {
        [self designEntertainmentCategory];
    }
    else if (category == 4)
    {
        [self designOtherCategory];
    }
}


#pragma design categories

- (void)designSportsCategory
{
    self.btnJoin.layer.borderColor = [[UIColor colorWithRed:231/255.0f green:76.0/255.0f blue:60.0/255.0f alpha:1.0]CGColor];
    self.attendersView.backgroundColor = [UIColor colorWithRed:231/255.0f green:76.0/255.0f blue:60.0/255.0f alpha:1.0];
    self.imgCategoryView.image = [UIImage imageNamed:@"football_colored.png"];
    self.imgHumanIcon.image = [UIImage imageNamed:@"person.png"];
    
    self.btnJoin.layer.borderWidth = 1.0f;
    self.btnJoin.layer.cornerRadius = 5.0f;
}

- (void)designEducationCategory
{
    self.btnJoin.layer.borderColor = [[UIColor colorWithRed:241/255.0f green:196.0/255.0f blue:15.0/255.0f alpha:1.0]CGColor];
    self.attendersView.backgroundColor = [UIColor colorWithRed:241/255.0f green:196.0/255.0f blue:15.0/255.0f alpha:1.0];
    self.imgCategoryView.image = [UIImage imageNamed:@"school_colored.png"];
    self.imgHumanIcon.image = [UIImage imageNamed:@"person.png"];
    
    self.btnJoin.layer.borderWidth = 1.0f;
    self.btnJoin.layer.cornerRadius = 5.0f;
}

- (void)designGreekCategory
{
    self.btnJoin.layer.borderColor = [[UIColor colorWithRed:52/255.0f green:152.0/255.0f blue:219.0/255.0f alpha:1.0]CGColor];
    self.attendersView.backgroundColor = [UIColor colorWithRed:52/255.0f green:152.0/255.0f blue:219.0/255.0f alpha:1.0];
    self.imgCategoryView.image = [UIImage imageNamed:@"greek_colored.png"];
    self.imgHumanIcon.image = [UIImage imageNamed:@"person.png"];
    
    self.btnJoin.layer.borderWidth = 1.0f;
    self.btnJoin.layer.cornerRadius = 5.0f;
}

- (void)designEntertainmentCategory
{
    self.btnJoin.layer.borderColor = [[UIColor colorWithRed:46/255.0f green:204.0/255.0f blue:113.0/255.0f alpha:1.0]CGColor];
    self.attendersView.backgroundColor = [UIColor colorWithRed:46/255.0f green:204.0/255.0f blue:113.0/255.0f alpha:1.0];
    self.imgCategoryView.image = [UIImage imageNamed:@"movie_colored.png"];
    self.imgHumanIcon.image = [UIImage imageNamed:@"person.png"];
    
    self.btnJoin.layer.borderWidth = 1.0f;
    self.btnJoin.layer.cornerRadius = 5.0f;
}

- (void)designOtherCategory
{
    self.btnJoin.layer.borderColor = [[UIColor colorWithRed:155/255.0f green:89/255.0f blue:182/255.0f alpha:1.0]CGColor];
    self.attendersView.backgroundColor = [UIColor colorWithRed:155/255.0f green:89/255.0f blue:182/255.0f alpha:1.0];
    self.imgCategoryView.image = [UIImage imageNamed:@"other_colored.png"];
    self.imgHumanIcon.image = [UIImage imageNamed:@"person.png"];
    
    self.btnJoin.layer.borderWidth = 1.0f;
    self.btnJoin.layer.cornerRadius = 5.0f;
}@end
