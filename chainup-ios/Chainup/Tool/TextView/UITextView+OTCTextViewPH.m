//
//  UITextView+OTCTextViewPH.m
//  Chainup
//
//  Created by xue on 2018/10/11.
//  Copyright © 2018年 zewu wang. All rights reserved.
//

#import "UITextView+OTCTextViewPH.h"

#import <objc/runtime.h>

static NSString *placeHoldLabelKey = @"placeHoldLabelKey";
static NSString *placeHoldStringKey = @"placeHoldStringKey";
static NSString *placeHoldColorKey = @"placeHoldColorKey";
static NSString *placeHoldFontKey = @"placeHoldFontKey";

@interface UITextView()

@property (strong, nonatomic) UILabel *placeLabel;

@end


@implementation UITextView (OTCTextViewPH)

- (void)setPlaceLabel:(UILabel *)placeLabel{
    objc_setAssociatedObject(self, &placeHoldLabelKey, placeLabel, OBJC_ASSOCIATION_RETAIN);
}

- (UILabel *)placeLabel{
    return objc_getAssociatedObject(self, &placeHoldLabelKey);
}



- (void)setPlaceHoldString:(NSString *)placeHoldString{
    
    if (!self.placeLabel) {
        
        self.placeLabel = [self setupCustomPlaceHoldLabel];
    }
    
    self.placeLabel.text = placeHoldString;
    objc_setAssociatedObject(self, &placeHoldStringKey, placeHoldString, OBJC_ASSOCIATION_COPY);
}

- (NSString *)placeHoldString{
    return objc_getAssociatedObject(self, &placeHoldStringKey);
}


- (void)setPlaceHoldColor:(UIColor *)placeHoldColor{
    
    if (!self.placeLabel) {
        
        self.placeLabel = [self setupCustomPlaceHoldLabel];
    }
    
    self.placeLabel.textColor = placeHoldColor;
    objc_setAssociatedObject(self, &placeHoldColorKey, placeHoldColor, OBJC_ASSOCIATION_RETAIN);
}

- (UIColor *)placeHoldColor{
    return objc_getAssociatedObject(self, &placeHoldColorKey);
}



- (void)setPlaceHoldFont:(UIFont *)placeHoldFont{
    
    if (!self.placeLabel) {
        self.placeLabel = [self setupCustomPlaceHoldLabel];
    }
    
    self.placeLabel.font = placeHoldFont;
    objc_setAssociatedObject(self, &placeHoldFontKey, placeHoldFont, OBJC_ASSOCIATION_RETAIN);
}

- (UIFont *)placeHoldFont{
    return objc_getAssociatedObject(self, &placeHoldFontKey);
}


- (UILabel *)setupCustomPlaceHoldLabel{
    
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = 0;
    label.textColor = [UIColor lightGrayColor];
    label.font = self.font;
    [label sizeToFit];
    [self addSubview:label];
    [self setValue:label forKey:@"_placeholderLabel"];
    
    return label;
}

@end

