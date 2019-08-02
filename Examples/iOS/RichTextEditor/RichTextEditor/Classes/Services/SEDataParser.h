//
//  SEDataParser.h
//  RichTextEditor
//
//  Created by Liumao on 2019/8/2.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SEBaseModel;

NS_ASSUME_NONNULL_BEGIN

@interface SEDataParser : NSObject

-(SEBaseModel*) modelAtIndexPath:(NSIndexPath*)indexPath;

@end

NS_ASSUME_NONNULL_END
