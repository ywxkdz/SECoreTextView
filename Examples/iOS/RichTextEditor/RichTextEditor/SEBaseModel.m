//
//  SEBaseModel.m
//  RichTextEditor
//
//  Created by Liumao on 2019/7/31.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import "SEBaseModel.h"

@implementation SEBaseModel

-(SETextConfig *)textConfig{
    return [SETextConfig configForType:self.type];
}


@end
