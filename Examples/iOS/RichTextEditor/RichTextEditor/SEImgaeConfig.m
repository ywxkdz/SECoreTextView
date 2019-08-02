//
//  SEImgaeConfig.m
//  RichTextEditor
//
//  Created by Liumao on 2019/8/2.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import "SEImgaeConfig.h"

static CGFloat margin = 30;

@interface SEImgaeConfig ()

@property(nonatomic,assign) CGSize originSize;

@end

@implementation SEImgaeConfig


-(instancetype)init{
    self = [super init];
    if (self) {
        self.margin = margin;
        self.width  = [UIScreen mainScreen].bounds.size.width - self.margin * 2;
    }
    return self;
}

+(instancetype)imageConfigOriginSize:(CGSize)size{
    
    SEImgaeConfig *config = [SEImgaeConfig new];
    config.originSize     = size;
    config.height         = config.width * size.height / size.width; //原比例缩放
    
    return config;
}

@end
