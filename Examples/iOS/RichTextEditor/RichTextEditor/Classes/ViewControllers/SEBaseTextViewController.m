//
//  SEBaseTextViewController.m
//  RichTextEditor
//
//  Created by Liumao on 2019/7/31.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import "SEBaseTextViewController.h"
#import "SEDataPrivider.h"
#import "SECellHeaders.h"

@interface SEBaseTextViewController ()

@property(nonatomic,strong) UITableView *tableView;
@property(nonatomic,strong)  id<UITableViewDelegate,UITableViewDataSource> dataPrivider;

@end

@implementation SEBaseTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpUI];
    [self.tableView reloadData];
    
}

#pragma mark - UI Set
-(void) setUpUI{
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];

}



#pragma mark - Lazy Load
-(id<UITableViewDelegate,UITableViewDataSource>)dataPrivider{
    
    if (!_dataPrivider) {
        _dataPrivider = [SEDataPrivider new];
    }
    return _dataPrivider;
}

-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds
                                                 style:UITableViewStylePlain];
        _tableView.dataSource = self.dataPrivider;
        _tableView.delegate   = self.dataPrivider;
        
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_tableView registerClass:[SENormalTextCell class]
           forCellReuseIdentifier:@"SENormalTextCell"];
        
        
    }
    return _tableView;
}

@end

