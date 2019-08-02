//
//  SETextConfig.m
//  RichTextEditor
//
//  Created by Liumao on 2019/8/2.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import "SETextConfig.h"
#import <UIKit/UIKit.h>

@interface SETextConfig ()

@end

@implementation SETextConfig


-(instancetype)init{
    self = [super init];
    if (self) {
        self.lineHeight = 38;
        self.lineWidth  = [UIScreen mainScreen].bounds.size.width;
        
        self.font = [UIFont systemFontOfSize:17];
        self.boldFont = [UIFont boldSystemFontOfSize:17];
        
        self.textColor = [UIColor lightGrayColor];
    }
    return self;
}

+(instancetype)configForType:(SERichTextType)type{

    switch (type) {
        case SERichTextTypeTitle:
        case SERichTextTypeNormal:
            return [self textConfig];
            
        case SERichTextTypeQuote:
        case SERichTextTypeCheck:
        case SERichTextTypeList:
            return [self richConfig];
            
        case SERichTextTypeImage:
            NSAssert(type == SERichTextTypeImage, @"");
        default:
            break;
    }
    return [SETextConfig new];
}

static SETextConfig *textConfig = nil;
+(instancetype) textConfig{
    
    if (!textConfig) {
        textConfig = [SETextConfig new];
    }
    return textConfig;
}

static SETextConfig *richConfig = nil;
+(instancetype) richConfig{
    
    if (!richConfig) {
        richConfig = [SETextConfig new];
    }
    return richConfig;
}


//TODO:差异化文本类型 之间区别

@end
