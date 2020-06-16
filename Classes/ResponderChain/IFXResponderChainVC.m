//
//  IFXResponderChainVCViewController.m
//  IFXProgram
//
//  Created by luckyvon on 2020/6/16.
//  Copyright © 2020 luckyvon. All rights reserved.
//

#import "IFXResponderChainVC.h"
#import "IFXView1.h"
#import "IFXView2.h"
#import "IFXView3.h"


@interface IFXResponderChainVC ()

@property (nonatomic, strong) UIView *tmpView;

@end

@implementation IFXResponderChainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSubViews];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self nextResponderWithView:self.tmpView];
}

- (void)addSubViews {
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat width1 = screenWidth - 20;
    CGFloat width2 = width1 - 20;
    
    IFXView1 *view1 = [[IFXView1 alloc] initWithFrame:CGRectMake(10, 10, width1, 100)];
    view1.backgroundColor = [UIColor systemPinkColor];
    [self.view addSubview:view1];
    
    IFXView2 *view2 = [[IFXView2 alloc] initWithFrame:CGRectMake(10, 120, width1, 230)];
    view2.backgroundColor = [UIColor redColor];
    [self.view addSubview:view2];
    
    IFXView3 *view3 = [[IFXView3 alloc] initWithFrame:CGRectMake(10, 10, width2 , 100)];
    self.tmpView = view3;
    view3.backgroundColor = [UIColor purpleColor];
    [view2 addSubview:view3];
}

- (void)nextResponderWithView:(UIView *)view {
    if (!view) {
        return;
    }
    
     NSLog(@"%@",NSStringFromClass([view class]));
    
    UIResponder *nextResponder = view.nextResponder;
    NSMutableString *pre = [NSMutableString stringWithString:@"-"];
   
    while (nextResponder) {
        NSLog(@"%@%@", pre, NSStringFromClass([nextResponder class]));
        [pre appendString:@"-"];
        nextResponder = nextResponder.nextResponder;
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@ touchesBegan", NSStringFromClass([self class]));
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@ touchesMoved", NSStringFromClass([self class]));
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@ touchesEnded", NSStringFromClass([self class]));
    [super touchesEnded:touches withEvent:event];
}
@end
