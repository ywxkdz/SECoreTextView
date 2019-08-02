//
//  SETextCommonFile.h
//  RichTextEditor
//
//  Created by Liumao on 2019/8/2.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#ifndef SETextCommonFile_h
#define SETextCommonFile_h



typedef enum : NSUInteger {
    SERichTextTypeTitle,
    SERichTextTypeNormal,
    
    SERichTextTypeList,
    SERichTextTypeQuote,
    SERichTextTypeCheck,
    
    SERichTextTypeImage,
    SERichTextTypeFile,
} SERichTextType;

@class SEBaseModel;
@protocol SECellUpDataDelegate <NSObject>
-(void) updateModel:(SEBaseModel*)model;
@end


#endif /* SETextCommonFile_h */
