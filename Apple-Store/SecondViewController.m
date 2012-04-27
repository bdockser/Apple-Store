//
//  SecondViewController.m
//  Apple-Store
//
//  Created by Yuval Marcus on 4/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "DetailViewController.h"
#import "Product.h"
#import "AppleStore.h"

#pragma mark - View lifecycle

@implementation SecondViewController
@synthesize myAppleStore;
@synthesize detailViewController = _detailViewController;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.myAppleStore = [[AppleStore alloc] init];
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section
{
    return self.myAppleStore.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    DetailViewController *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    [self.navigationController pushViewController:detail animated:YES];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }


    cell.textLabel.text = [self.myAppleStore productatIndex:indexPath.row].title;


    return cell;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Product *selectedProduct = [self.myAppleStore productatIndex:indexPath.row];
    
    if (!self.modalViewController) {
        self.modalViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    }
    self.modalViewController.detailItem = selectedProduct;
    [self.navigationController pushViewController:self.modalViewController animated:YES];
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
