//
//  SecondViewController.h
//  Apple-Store
//
//  Created by Yuval Marcus on 4/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppleStore;
@class DetailViewController;

@interface SecondViewController : UIViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) AppleStore *myAppleStore;

@end
