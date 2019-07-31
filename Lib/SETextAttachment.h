//
//  SETextAttachment.h
//  SECoreTextView-iOS
//
//  Created by kishikawa katsumi on 2013/04/26.
//  Copyright (c) 2013 kishikawa katsumi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreText/CoreText.h>



@interface SETextAttachment : NSObject

@property (nonatomic, readonly) id object;
@property (nonatomic, readonly) CGSize size;
@property (nonatomic, readonly) NSRange range;

@property (nonatomic, readonly) CTRunDelegateCallbacks callbacks;

@property (nonatomic) NSAttributedString *originalAttributedString;
@property (nonatomic) NSString *replacedString;

- (id)initWithObject:(id)object size:(CGSize)size range:(NSRange)range;

@end
