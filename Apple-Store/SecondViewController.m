//
//  SecondViewController.m
//  Apple-Store
//
//  Created by Yuval Marcus on 4/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "DetailViewController.h"
#pragma mark - View lifecycle

@implementation SecondViewController
@synthesize dummyArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self setupArray];
}

- (void)setupArray {
    dummyArray = [[NSMutableArray alloc] init];
    [dummyArray addObject:@"Object 1"];
    [dummyArray addObject:@"Object 2"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [dummyArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }


    cell.textLabel.text = [dummyArray objectAtIndex:indexPath.row];

    return cell;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *__strong)indexPath {
    
    DetailViewController *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    [self.navigationController pushViewController:detail animated:YES];
    
    detail.rowNum.text = [NSString stringWithFormat:@"This is row %d", (indexPath.row +1)];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
