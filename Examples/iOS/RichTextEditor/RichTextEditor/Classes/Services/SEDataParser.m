//
//  SEDataParser.m
//  RichTextEditor
//
//  Created by Liumao on 2019/8/2.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import "SEDataParser.h"
#import "SETitleModel.h"


@implementation SEDataParser

-(SEBaseModel *)modelAtIndexPath:(NSIndexPath *)indexPath{
    
    SETitleModel *model =  [SETitleModel new];
    model.type   = SERichTextTypeNormal;
    return model;
}

@end
