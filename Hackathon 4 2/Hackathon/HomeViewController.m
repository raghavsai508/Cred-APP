//
//  HomeViewController.m
//  Hackathon
//
//  Created by Raghav Sai on 2/12/15.
//  Copyright (c) 2015 handson. All rights reserved.
//

#import "HomeViewController.h"
#import "CategoryCell.h"
#import "EventDetailTableViewController.h"

@interface HomeViewController () 

@property (weak, nonatomic) IBOutlet UITableView *topCategoryTableView;
@property (strong, nonatomic) IBOutlet UIButton *btnSportsCategory;






@property (strong, nonatomic) UIStoryboard *storyBoard;
@property (strong, nonatomic) EventDetailTableViewController *eventDetailTableViewController;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.topCategoryTableView.rowHeight = 110.0f;
    self.storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma tableview delegates and data sources

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"CategoryCell";
    CategoryCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    
    [cell designUI:1];
    cell.backgroundColor= [UIColor whiteColor];
    if(indexPath.section == 0)
    {
        
        
         [cell designUI:0];
        //cell.backgroundColor = [UIColor colorWithRed:231.0f/255.0f green:76.0f/255.0f blue:60.0f/255.0f alpha:1];
    }

    else if(indexPath.section == 1)
    {
         [cell designUI:1];
        //cell.backgroundColor= [UIColor whiteColor];
        //cell.backgroundColor = [UIColor colorWithRed:241.0f/255.0f green:196.0f/255.0f blue:15.0f/255.0f alpha:1] ;
    }
   else  if(indexPath.section == 2)
    {
         [cell designUI:2];
        //cell.backgroundColor = [UIColor colorWithRed:52.0f/255.0f green:152.0f/255.0f blue:219.0f/255.0f alpha:1] ;
    }
   else  if(indexPath.section == 3)
   {
        [cell designUI:3];
       //cell.backgroundColor = [UIColor colorWithRed:46.0f/255.0f green:204.0f/255.0f blue:113.0f/255.0f alpha:1] ;
   }
    
   else  if(indexPath.section == 4)
   {
        [cell designUI:4];
       //cell.backgroundColor = [UIColor colorWithRed:155.0f/255.0f green:89.0f/255.0f blue:182.0f/255.0f alpha:1] ;
   }

    
    cell.layer.masksToBounds = YES;
    cell.layer.cornerRadius = 5.0f;
    return cell;
}

-(CGFloat)tableView:(UITableView*)tableView heightForFooterInSection:(NSInteger)section
{
    
    return 8.0;
}

- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath
{
    if(indexPath.section == 0)
        [self showSportEvent];
    else if (indexPath.section == 1)
        [self showEducationEvent];
    else if (indexPath.section == 2)
        [self showGreekEvent];
    else if (indexPath.section == 3)
        [self showMovieEvent];
    else if (indexPath.section == 4)
        [self showOtherEvent];

}


#pragma event details
-(void)showSportEvent
{
    self.eventDetailTableViewController = [self.storyBoard instantiateViewControllerWithIdentifier:@"EventDetailTableViewController"];
    self.eventDetailTableViewController.categoryID = 0;
    [self.navigationController pushViewController:self.eventDetailTableViewController animated:YES];
}

-(void)showEducationEvent
{
    self.eventDetailTableViewController = [self.storyBoard instantiateViewControllerWithIdentifier:@"EventDetailTableViewController"];
    self.eventDetailTableViewController.categoryID = 1;
    [self.navigationController pushViewController:self.eventDetailTableViewController animated:YES];
}

-(void)showGreekEvent
{
    self.eventDetailTableViewController = [self.storyBoard instantiateViewControllerWithIdentifier:@"EventDetailTableViewController"];
    self.eventDetailTableViewController.categoryID = 2;
    [self.navigationController pushViewController:self.eventDetailTableViewController animated:YES];
}

-(void)showMovieEvent
{
    self.eventDetailTableViewController = [self.storyBoard instantiateViewControllerWithIdentifier:@"EventDetailTableViewController"];
    self.eventDetailTableViewController.categoryID = 3;
    [self.navigationController pushViewController:self.eventDetailTableViewController animated:YES];
}

-(void)showOtherEvent
{
    self.eventDetailTableViewController = [self.storyBoard instantiateViewControllerWithIdentifier:@"EventDetailTableViewController"];
    self.eventDetailTableViewController.categoryID = 4;
    [self.navigationController pushViewController:self.eventDetailTableViewController animated:YES];
}

#pragma Category Actions
- (IBAction)sportsAction:(id)sender
{
    
}

- (IBAction)educationAction:(id)sender
{
   
}

- (IBAction)greekAction:(id)sender
{
    
}

- (IBAction)movieAction:(id)sender
{
    
}

- (IBAction)otherAction:(id)sender
{
   
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
