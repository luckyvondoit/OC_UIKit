//
//  IFXView3.m
//  IFXProgram
//
//  Created by luckyvon on 2020/6/16.
//  Copyright © 2020 luckyvon. All rights reserved.
//

#import "IFXView3.h"

@implementation IFXView3

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)]];
    }
    return self;
}

- (void)tapAction:(UITapGestureRecognizer *)recognizer {
    NSLog(@"%@ taped",NSStringFromClass([self class]));
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
