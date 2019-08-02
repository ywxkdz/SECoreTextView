//
//  SECellFactory.h
//  RichTextEditor
//
//  Created by Liumao on 2019/8/2.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SEBaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface SECellFactory : NSObject

+(UITableViewCell*) cellForModel:(SEBaseModel*)model;

@end

NS_ASSUME_NONNULL_END
