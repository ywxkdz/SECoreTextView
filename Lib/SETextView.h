//
//  SETextView.h
//  SECoreTextView
//
//  Created by kishikawa katsumi on 2013/04/20.
//  Copyright (c) 2013 kishikawa katsumi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreText/CoreText.h>
#import "SELinkText.h"
#import "SETextAttachment.h"
#import "SECompatibility.h"

typedef void(^SETextAttachmentDrawingBlock)(CGRect rect, CGContextRef context);

typedef NS_ENUM(NSUInteger, SETextAttachmentDrawingOptions) {
    SETextAttachmentDrawingOptionNone = 0,
    SETextAttachmentDrawingOptionNewLine  = 1 << 0
};

@protocol SETextViewDelegate;

@class SELinkText;


@interface SETextView : UIView <UITextInput, UITextInputTraits>


@property (nonatomic, weak) IBOutlet id<SETextViewDelegate> delegate;

@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSAttributedString *attributedText;
@property (nonatomic) UIFont *font;
@property (nonatomic) NSColor *textColor;
@property (nonatomic) NSColor *highlightedTextColor;
@property (nonatomic) NSTextAlignment textAlignment;
@property (nonatomic) NSLineBreakMode lineBreakMode;
@property (nonatomic) CGFloat lineSpacing;
@property (nonatomic) CGFloat lineHeight;
@property (nonatomic) CGFloat paragraphSpacing;

@property (nonatomic) NSColor *selectedTextBackgroundColor;
@property (nonatomic) NSColor *linkHighlightColor;
@property (nonatomic) NSColor *linkRolloverEffectColor;

@property (nonatomic, readonly) CGRect layoutFrame;

@property (nonatomic, getter = isHighlighted) BOOL highlighted;
@property (nonatomic, getter = isSelectable) BOOL selectable;
@property (nonatomic) BOOL showsEditingMenuAutomatically;
@property (nonatomic) NSRange selectedRange;

@property (nonatomic, readonly) NSString *selectedText;
@property (nonatomic, readonly) NSAttributedString *selectedAttributedText;

@property (nonatomic) NSTimeInterval minimumLongPressDuration;

@property (nonatomic, getter = isEditable) BOOL editable;
@property (nonatomic, readonly, getter = isEditing) BOOL editing;
@property (nonatomic, readonly) CGRect caretRect;

@property (readwrite) UIView *inputView;
@property (readwrite) UIView *inputAccessoryView;


@property (nonatomic) UITextAutocapitalizationType autocapitalizationType;
@property (nonatomic) UITextAutocorrectionType autocorrectionType;
@property (nonatomic) UITextSpellCheckingType spellCheckingType;
@property (nonatomic) UIKeyboardType keyboardType;
@property (nonatomic) UIKeyboardAppearance keyboardAppearance;
@property (nonatomic) UIReturnKeyType returnKeyType;
@property (nonatomic) BOOL enablesReturnKeyAutomatically;
@property (nonatomic, getter = isSecureTextEntry) BOOL secureTextEntry;


- (id)initWithFrame:(CGRect)frame;

+ (CGRect)frameRectWithAttributtedString:(NSAttributedString *)attributedString
                          constraintSize:(CGSize)constraintSize;
+ (CGRect)frameRectWithAttributtedString:(NSAttributedString *)attributedString
                          constraintSize:(CGSize)constraintSize
                             lineSpacing:(CGFloat)lineSpacing;

+ (CGRect)frameRectWithAttributtedString:(NSAttributedString *)attributedString
                          constraintSize:(CGSize)constraintSize
                             lineSpacing:(CGFloat)lineSpacing
                                    font:(UIFont *)font;
+ (CGRect)frameRectWithAttributtedString:(NSAttributedString *)attributedString
                          constraintSize:(CGSize)constraintSize
                             lineSpacing:(CGFloat)lineSpacing
                        paragraphSpacing:(CGFloat)paragraphSpacing
                                    font:(UIFont *)font;


- (void)addObject:(id)object size:(CGSize)size atIndex:(NSInteger)index;
- (void)addObject:(id)object size:(CGSize)size replaceRange:(NSRange)range;

- (void)insertAttributedText:(NSAttributedString *)attributedText;
- (void)insertObject:(id)object size:(CGSize)size;


- (void)clearSelection;

@end

@protocol SETextViewDelegate <NSObject>

@optional
- (BOOL)textViewShouldBeginEditing:(SETextView *)textView;
- (BOOL)textViewShouldEndEditing:(SETextView *)textView;

- (void)textViewDidBeginEditing:(SETextView *)textView;
- (void)textViewDidEndEditing:(SETextView *)textView;

- (BOOL)textView:(SETextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text;
- (void)textViewDidChange:(SETextView *)textView;

- (void)textViewDidChangeSelection:(SETextView *)textView;
- (void)textViewDidEndSelecting:(SETextView *)textView;

//- (BOOL)textView:(SETextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange;
//- (BOOL)textView:(SETextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange;

- (BOOL)textView:(SETextView *)textView clickedOnLink:(SELinkText *)link atIndex:(NSUInteger)charIndex;
- (BOOL)textView:(SETextView *)textView longPressedOnLink:(SELinkText *)link atIndex:(NSUInteger)charIndex;

@end
