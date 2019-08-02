//
//  SECellFactory.m
//  RichTextEditor
//
//  Created by Liumao on 2019/8/2.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import "SECellFactory.h"

@implementation SECellFactory

+(UITableViewCell *)cellForModel:(SEBaseModel *)model{
    
    NSString *cellClass = model.cellClass;
   
#if DEBUG
    NSAssert(cellClass.length == 0, @"cellClass == nil");
#endif
    Class class         = NSClassFromString(cellClass);
    UITableViewCell *cell = [[class alloc]initWithStyle:UITableViewCellStyleDefault
                                        reuseIdentifier:model.cellClass];
    return cell;
}

@end
