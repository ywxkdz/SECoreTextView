//
//  SENormalTextCell.m
//  RichTextEditor
//
//  Created by Liumao on 2019/7/31.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import "SENormalTextCell.h"
#import "SETextCommonFile.h"
#import "SETextView.h"

@interface SENormalTextCell()<SECellUpDataDelegate>

@property(nonatomic,strong)  SETextView *richTextView;

@end

@implementation SENormalTextCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setUpUI];
    }
    return self;
}
-(void) setUpUI{
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.backgroundColor = [UIColor redColor];
    
    [self.contentView addSubview:self.richTextView];
    
    
    
    
    
    
}

-(SETextView *)richTextView{
    if (!_richTextView) {
        _richTextView = [[SETextView alloc]initWithFrame:CGRectZero];
    }
    return _richTextView;
}
#pragma mark - SECellUpDataDelegate
-(void)updateModel:(SEBaseModel *)model{
    
    
}

@end
