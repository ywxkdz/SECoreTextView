//
//  SEBaseTextViewController.m
//  RichTextEditor
//
//  Created by Liumao on 2019/7/31.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import "SEBaseTextViewController.h"

@interface SEBaseTextViewController ()

@property(nonatomic,strong) UITableView *tableView;

@end

@implementation SEBaseTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Lazy Load
-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate   = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}
@end

@interface SEBaseTextViewController(TableView)<UITableViewDelegate,UITableViewDataSource>

@end

@implementation SEBaseTextViewController (TableView)

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return nil;
}


@end




