//
//  EventDetailTableViewController.m
//  Hackathon
//
//  Created by handson MacPro on 2/12/15.
//  Copyright (c) 2015 handson. All rights reserved.
//

#import "EventDetailTableViewController.h"
#import "ProfileViewController.h"

@interface EventDetailTableViewController ()

@property (strong, nonatomic) IBOutlet UIView *eventHeaderView;
@property (strong, nonatomic) IBOutlet UIImageView *eventPicture;
@property (strong, nonatomic) IBOutlet UIView *imageTopView;
@property (strong, nonatomic) IBOutlet UILabel *lblEventTitle;
@property (strong, nonatomic) IBOutlet UIView *eventView;
@property (strong, nonatomic) IBOutlet UIView *superEventView;
@property (weak, nonatomic) IBOutlet UIButton *btnProfile;

@property (nonatomic, strong) ProfileViewController *profileController;
@property (strong, nonatomic) IBOutlet UIButton *btnShowAttendees;

@end

@implementation EventDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareHeaderView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma UIDesign

- (void)prepareHeaderView
{
    self.tableView.tableHeaderView = self.eventHeaderView;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier;
    UITableViewCell *cell;
    if(indexPath.row == 0)
    {
        cellIdentifier = @"EventContentViewCell";
        cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        [self prepareCategoryCell];
        self.btnProfile.layer.borderColor = [[UIColor whiteColor]CGColor];
        self.btnProfile.layer.borderWidth = 1.0f;
        self.btnProfile.layer.cornerRadius = self.btnProfile.frame.size.width/2;
        [self.btnProfile setBackgroundImage:[UIImage imageNamed:@"person.png"] forState:UIControlStateNormal];
    }
    else
    {
        cellIdentifier = @"SubmitViewCell";
        cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    }
        return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0)
        return 150.0f;
    else
        return 60.0f;
}


#pragma Cell preparation
- (void)prepareCategoryCell
{
    if(self.categoryID == 0)
        [self prepareSportsCategory];
    else if (self.categoryID == 1)
        [self prepareEducationCategory];
    else if (self.categoryID == 2)
        [self prepareGreekCategory];
    else if (self.categoryID == 3)
        [self prepareEntertainmentCategory];
    else if (self.categoryID == 4)
        [self prepareOtherCategory];
        
}

#pragma prepare Categories

- (void)prepareSportsCategory
{
    self.eventPicture.image = [UIImage imageNamed:@"sports_picture.png"];
    self.superEventView.backgroundColor = [UIColor colorWithRed:231/255.0f green:76.0/255.0f blue:60.0/255.0f alpha:1.0];
    self.imageTopView.backgroundColor = [UIColor colorWithRed:192.0/255.0f green:57.0/255.0f blue:43.0/255.0f alpha:1.0f];
    self.btnProfile.backgroundColor = [UIColor colorWithRed:231/255.0f green:76.0/255.0f blue:60.0/255.0f alpha:1.0];
}

- (void)prepareEducationCategory
{
    self.eventPicture.image = [UIImage imageNamed:@"school_picture.png"];
    self.superEventView.backgroundColor = [UIColor colorWithRed:241.0/255.0f green:196/255.0f blue:15/255.0f alpha:1.0];
    self.imageTopView.backgroundColor = [UIColor colorWithRed:243/255.0f green:156.0/255.0f blue:18.0/255.0f alpha:1.0f];
    self.btnProfile.backgroundColor = [UIColor colorWithRed:241.0/255.0f green:196/255.0f blue:15/255.0f alpha:1.0];
}

-(void)prepareGreekCategory
{
    self.eventPicture.image = [UIImage imageNamed:@"greek_picture.png"];
    self.superEventView.backgroundColor = [UIColor colorWithRed:52/255.0f green:152/255.0f blue:219/255.0f alpha:1.0];
    self.imageTopView.backgroundColor = [UIColor colorWithRed:41/255.0f green:128.0/255.0f blue:185.0/255.0f alpha:1.0f];
    self.btnProfile.backgroundColor = [UIColor colorWithRed:52/255.0f green:152/255.0f blue:219/255.0f alpha:1.0];
}


- (void)prepareEntertainmentCategory
{
    self.eventPicture.image = [UIImage imageNamed:@"entertainment_picture.png"];
    self.superEventView.backgroundColor = [UIColor colorWithRed:46/255.0f green:204/255.0f blue:113/255.0f alpha:1.0];
    self.imageTopView.backgroundColor = [UIColor colorWithRed:39/255.0f green:174.0/255.0f blue:96.0/255.0f alpha:1.0f];
    self.btnProfile.backgroundColor = [UIColor colorWithRed:46/255.0f green:204/255.0f blue:113/255.0f alpha:1.0];
}

- (void)prepareOtherCategory
{
    self.eventPicture.image = [UIImage imageNamed:@"other_picture.png"];
    self.superEventView.backgroundColor = [UIColor colorWithRed:155/255.0f green:89/255.0f blue:182/255.0f alpha:1.0];
    self.imageTopView.backgroundColor = [UIColor colorWithRed:142/255.0f green:68.0/255.0f blue:173.0/255.0f alpha:1.0f];
    self.btnProfile.backgroundColor = [UIColor colorWithRed:155/255.0f green:89/255.0f blue:182/255.0f alpha:1.0];
}

- (IBAction)profileAction:(id)sender
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.profileController = [storyBoard instantiateViewControllerWithIdentifier:@"ProfileViewController"];
    [self.navigationController pushViewController:self.profileController animated:YES];
    
}
- (IBAction)showAttendeesAction:(id)sender
{
    NSLog(@"clicked");
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
