//
//  AppleStore.m
//  Apple-Store
//
//  Created by Yuval Marcus on 4/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppleStore.h"

@implementation AppleStore
@synthesize theAppleStore;

- (id) init
{
    self = [super init];
    if (self)
    {
        self.theAppleStore = [[NSMutableArray alloc] init];
        Product *newProduct = [[Product alloc] init];
        newProduct.title = @"iPhone";
        newProduct.price = @"Price: $199";
        [self.theAppleStore addObject:newProduct];
        
        newProduct = [[Product alloc] init];
        newProduct.title = @"iPad";
        newProduct.price = @"Price: $499";
        [self.theAppleStore addObject:newProduct];
        newProduct = nil;
    }
    
    return self;
}

- (NSUInteger)count
{
    return theAppleStore.count;
}

- (Product *)productatIndex:(NSUInteger)index
{
    return [theAppleStore objectAtIndex:index];
}



@end
