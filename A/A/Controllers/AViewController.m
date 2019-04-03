//
//  AViewController.m
//  A
//
//  Created by CoderSLZeng on 2019/4/3.
//  Copyright © 2019 CoderSLZeng. All rights reserved.
//

#import "AViewController.h"
#import <B_Category/CTMediator+B.h>

@interface AViewController ()

/** push B控制器的按钮 */
@property (strong, nonatomic) UIButton *pushBViewControllerButton;

@end

@implementation AViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.pushBViewControllerButton];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    [self.pushBViewControllerButton sizeToFit];
    self.pushBViewControllerButton.center = self.view.center;
}

#pragma mark - event response
- (void)didTouchedPushBViewControllerButton {
    
    UIViewController *vc = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"Hello World!"];
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - getters and setters
- (UIButton *)pushBViewControllerButton {
    if (!_pushBViewControllerButton) {
        _pushBViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushBViewControllerButton setTitle:@"push B view controller" forState:UIControlStateNormal];
        [_pushBViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushBViewControllerButton addTarget:self
                                       action:@selector(didTouchedPushBViewControllerButton)
                             forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _pushBViewControllerButton;
}




@end
