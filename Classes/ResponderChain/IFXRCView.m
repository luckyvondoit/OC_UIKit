//
//  IFXRCView.m
//  IFXProgram
//
//  Created by luckyvon on 2020/6/16.
//  Copyright © 2020 luckyvon. All rights reserved.
//

#import "IFXRCView.h"
#import <objc/runtime.h>

@implementation IFXRCView

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

@implementation UIView (IFXResponderChain)

+ (void)load {
    swizzlingMethod([UIView class], @selector(hitTest:withEvent:), @selector(IFX_hitTest:withEvent:));
    swizzlingMethod([UIView class], @selector(pointInside:withEvent:), @selector(IFX_pointInside:withEvent:));
}

void swizzlingMethod(Class class ,SEL originalSelector, SEL swizzledSelector) {
    
    Method originalMethod = class_getInstanceMethod(class, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    
    BOOL success = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    if (success) {
        class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    }else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

- (UIView *)IFX_hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"%@ hitTest", NSStringFromClass([self class]));
    UIView *result = [self IFX_hitTest:point withEvent:event];
    NSLog(@"%@ hitTest return: %@", NSStringFromClass([self class]), NSStringFromClass([result class]));
    return result;
}

- (BOOL)IFX_pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"%@ pointInside", NSStringFromClass([self class]));
    BOOL result = [self IFX_pointInside:point withEvent:event];
    NSLog(@"%@ pointInside return: %@", NSStringFromClass([self class]), result ? @"YES":@"NO");
    return result;
}


@end
