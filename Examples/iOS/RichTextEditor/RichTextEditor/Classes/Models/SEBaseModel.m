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

-(void)setType:(SERichTextType)type{
    
    _type = type;
    
    switch (type) {
        case SERichTextTypeTitle:
        case SERichTextTypeNormal:
            self.cellClass = @"SENormalTextCell";
            break;
            
        case SERichTextTypeCheck:
        case SERichTextTypeQuote:
        case SERichTextTypeList:
            
            self.cellClass = @"";
            break;
            
        default:
            break;
    }
}

@end
