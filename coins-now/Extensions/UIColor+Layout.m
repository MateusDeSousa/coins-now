//
//  UIColor+Layout.m
//  coins-now
//
//  Created by Mateus Sousa on 01/07/20.
//  Copyright © 2020 Mateus Sousa. All rights reserved.
//

#import "UIColor+Layout.h"
#import <UIKit/UIKit.h>

@implementation UIColor (Layout)

+ (UIColor *) baseBackground {
    UIColor *lightColor = [UIColor colorWithRed:245.0f/255.0f green:246.0f/255.0f blue:252.0f/255.0f alpha:1.0f];
    if (@available(iOS 13.0, *)) {
        return [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return [UIColor blackColor];
            }else {
                return lightColor;
            }
        }];
    }else{
        return lightColor;
    }
}

+ (UIColor *) elevetedBackground {
    UIColor *lightColor = [UIColor whiteColor];
    if (@available(iOS 13.0, *)) {
        return [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0f/255.0f alpha:1.0f];
            }else {
                return lightColor;
            }
        }];
    }else{
        return lightColor;
    }
}

@end
