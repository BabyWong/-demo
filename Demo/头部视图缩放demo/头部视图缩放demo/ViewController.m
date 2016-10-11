//
//  ViewController.m
//  头部视图缩放demo
//
//  Created by hwm on 16/10/11.
//  Copyright © 2016年 hwm. All rights reserved.
//
#import "ViewController.h"

// 导入第三方
#import "UIScrollView+HeaderScaleImage.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 设置tableView头部缩放图片
    self.tableView.yz_headerScaleImage = [UIImage imageNamed:@"head"];
    // 设置tableView头部缩放图片位置
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 200)];
    headerView.backgroundColor = [UIColor clearColor];
    self.tableView.tableHeaderView = headerView;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"headcell"];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"headcell"];
    cell.textLabel.textColor = [UIColor redColor];
    NSString *text = nil;
    switch (indexPath.row) {
        case 0:
        {
            text = @"hwm";
            break;
        }
        case 1:
        {
            text = @"呵呵呵😁";
            break;
        }
        case 2:
        {
            text = @"哈哈哈😆";
            break;
        }
            
        default:
            break;
    }
    
    cell.textLabel.text = text;


    return cell;
}

@end
