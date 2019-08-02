//
//  SEImgaeConfig.h
//  RichTextEditor
//
//  Created by Liumao on 2019/8/2.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SEImgaeConfig : NSObject

@property(nonatomic,assign) CGFloat width;
@property(nonatomic,assign) CGFloat height;

@property(nonatomic,assign) CGFloat margin; //左右边距

+(instancetype) imageConfigOriginSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
