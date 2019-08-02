//
//  SEDataPrivider.m
//  RichTextEditor
//
//  Created by Liumao on 2019/8/2.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import "SEDataPrivider.h"
#import "SEDataParser.h"
#import "SETitleModel.h"


@interface SEDataPrivider ()

@property(nonatomic,strong) SEDataParser *dataParser;

@end

@implementation SEDataPrivider

-(SEDataParser *)dataParser{
    if (!_dataParser) {
        _dataParser = [SEDataParser new];
    }
    return _dataParser;
}

#pragma mark  - <UITableViewDataSource,UITableViewDelegate>

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView
                 cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    SEBaseModel *model = [self.dataParser modelAtIndexPath:indexPath];
    
    UITableViewCell <SECellUpDataDelegate>*cell = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:model.cellClass
                                           forIndexPath:indexPath];
    [cell updateModel:model];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}

@end
