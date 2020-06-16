//
//  IFXTestVC.m
//  IFXProgram
//
//  Created by luckyvon on 2020/6/16.
//  Copyright © 2020 luckyvon. All rights reserved.
//

#import "IFXTestVC.h"
#import "IFXResponderChainVC.h"

@interface IFXTestVC ()

@end

@implementation IFXTestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    IFXResponderChainVC *vc = [[IFXResponderChainVC alloc] init];
    [self.view addSubview:vc.view];
    [self addChildViewController:vc];
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
