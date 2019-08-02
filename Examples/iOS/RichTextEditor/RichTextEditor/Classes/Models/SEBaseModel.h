//
//  SEBaseModel.h
//  RichTextEditor
//
//  Created by Liumao on 2019/7/31.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SETextCommonFile.h"
#import "SEBoldRange.h"
#import "SETextConfig.h"


NS_ASSUME_NONNULL_BEGIN

@interface SEBaseModel : NSObject

@property(nonatomic,assign) SERichTextType type;

@property(nonatomic,copy)   NSString *text; //文本
@property(nonatomic,strong) NSMutableArray <SEBoldRange*>*blodRangs; //加粗区间


@property(nonatomic,strong) SETextConfig *textConfig;  //格式定义
@property(nonatomic,copy)   NSString *cellClass;  //格式定义

@end

NS_ASSUME_NONNULL_END
