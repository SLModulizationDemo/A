//
//  Target_A.m
//  A
//
//  Created by CoderSLZeng on 2019/4/3.
//  Copyright © 2019 CoderSLZeng. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"

@implementation Target_A

- (nonnull UIViewController *)Action_viewController:(nullable NSDictionary *)params {
    
    AViewController *vc = [[AViewController alloc] init];
    return vc;
}

@end
