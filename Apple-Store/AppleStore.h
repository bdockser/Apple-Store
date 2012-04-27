//
//  AppleStore.h
//  Apple-Store
//
//  Created by Yuval Marcus on 4/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface AppleStore : NSObject

@property(strong,nonatomic) NSMutableArray *theAppleStore;


-(NSUInteger)count;
-(Product *)productatIndex:(NSUInteger)index;

@end
