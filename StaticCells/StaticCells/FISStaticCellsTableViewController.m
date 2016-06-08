//
//  FISStaticCellsTableViewController.m
//  StaticCells
//
//  Created by John Richardson on 6/7/16.
//  Copyright © 2016 John Richardson. All rights reserved.
//

#import "FISStaticCellsTableViewController.h"

@interface FISStaticCellsTableViewController ()

@end

@implementation FISStaticCellsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"VIBRATE";
    } else if (section == 1) {
        return @"RINGER AND ALERTS";
    } else {
        return @"SOUNDS AND VIBRATION PATTERNS";
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 2;
    } else if (section == 1) {
        return 3;
    } else {
        return 3;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *SimpleIdentifier = @"SimpleIdentifier";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:SimpleIdentifier];
    }
    
    if (indexPath.section == 0) {
        UISwitch *aSwitch = [[UISwitch alloc] init];
        [aSwitch setOn:YES];
        cell.accessoryView = aSwitch;
        if (indexPath.row == 0) {
            cell.textLabel.text = @"Vibrate on Ring";
        } else {
            cell.textLabel.text = @"Vibrate on Silent";
        }
    } else if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            UISlider *aSlider = [[UISlider alloc] init];
            [cell addSubview:aSlider];
            aSlider.bounds = CGRectMake(0, 0, cell.contentView.bounds.size.width - 50, aSlider.bounds.size.height);
            aSlider.center = CGPointMake(CGRectGetMidX(cell.contentView.bounds), CGRectGetMidY(cell.contentView.bounds));
            aSlider.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
        } else if (indexPath.row == 1) {
            UISwitch *aSwitch = [[UISwitch alloc] init];
            [aSwitch setOn:YES];
            cell.accessoryView = aSwitch;
            cell.textLabel.text = @"Change with Buttons";
        } else {
            cell.backgroundColor = [UIColor lightGrayColor];
            cell.textLabel.numberOfLines = 0;
            cell.textLabel.text = @"The volume of the ringer and alerts can be\n adjusted using the volume buttons.";

        }
    } else {
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        if (indexPath.row == 0) {
            cell.textLabel.text = @"Ringtone";
            cell.detailTextLabel.text = @"Trill";
        } else if (indexPath.row == 1) {
            cell.textLabel.text = @"Text Tone";
            cell.detailTextLabel.text = @"Glass";
        } else {
            cell.textLabel.text = @"New Voicemail";
            cell.detailTextLabel.text = @"Tri-tone";
        }
    }
    
    return cell;
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
