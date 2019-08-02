//
//  SETextConfig.h
//  RichTextEditor
//
//  Created by Liumao on 2019/8/2.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SETextCommonFile.h"

NS_ASSUME_NONNULL_BEGIN

@interface SETextConfig : NSObject

@property(nonatomic,strong) UIFont   *font;
@property(nonatomic,strong) UIFont   *boldFont;
@property(nonatomic,assign) CGFloat  lineHeight; //文本时为文本的高 图片时为图片的高
@property(nonatomic,assign) CGFloat  lineWidth;
@property(nonatomic,strong) UIColor  *textColor;

+(instancetype) configForType:(SERichTextType)type;

@end

NS_ASSUME_NONNULL_END
