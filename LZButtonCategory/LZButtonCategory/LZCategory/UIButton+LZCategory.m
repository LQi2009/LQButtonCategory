//
//  UIButton+LZCategory.m
//  LZButtonCategory
//
//  Created by Artron_LQQ on 16/5/5.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import "UIButton+LZCategory.h"

@implementation UIButton (LZCategory)

- (void)setbuttonType:(LZCategoryType)type {
    
    [self layoutIfNeeded];
    
    CGRect titleFrame = self.titleLabel.frame;
    CGRect imageFrame = self.imageView.frame;
    
    CGFloat space = titleFrame.origin.x - imageFrame.origin.x - imageFrame.size.width;
    
    if (type == LZCategoryTypeLeft) {

        [self setImageEdgeInsets:UIEdgeInsetsMake(0,titleFrame.size.width + space, 0, -(titleFrame.size.width + space))];
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -(titleFrame.origin.x - imageFrame.origin.x), 0, titleFrame.origin.x - imageFrame.origin.x)];

    } else if(type == LZCategoryTypeBottom) {
        
        
        [self setImageEdgeInsets:UIEdgeInsetsMake(0,0, titleFrame.size.height + space, -(titleFrame.size.width))];
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(imageFrame.size.height + space, -(imageFrame.size.width), 0, 0)];
    }
}
@end
