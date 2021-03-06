//
//  UILabel+FontFit.m
//  SafeFoodManagerDemo
//
//  Created by bob on 2017/9/15.
//  Copyright © 2017年 bob. All rights reserved.
// 此方法适用于xib

#import "UILabel+FontFit.h"
#import "NSObject+TBAdd.h"
@implementation UILabel (FontFit)


+(void)load
{
    [[self class] swizzleInstanceMethod:@selector(initWithCoder:) with:@selector(TB_InitWithCoder:)];

}

- (id)TB_InitWithCoder:(NSCoder*)aDecode{
    
    [self TB_InitWithCoder:aDecode];
    
     CGFloat pt = self.font.pointSize;
    
    self.font = [UIFont systemFontOfSize:pt];//这个方法会进行字体转换

    return self;
}

@end
