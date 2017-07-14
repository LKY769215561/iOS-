//
//  ViewController.m
//  架构设计
//
//  Created by Kerain on 2017/6/30.
//  Copyright © 2017年 广州市九章信息科技有限公司. All rights reserved.
//

#import "ViewController.h"
#import "MVCController.h"
#import "MVPController.h"
#import "MVVMController.h"
#import "CDDController.h"


static NSString * const CellReuseId = @"CellReuseId";

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellReuseId];
}


#pragma UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellReuseId];
    
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"MVC";
            break;
        case 1:
            cell.textLabel.text = @"MVP";
            break;
        case 2:
            cell.textLabel.text = @"MVVM";
            break;
        default:
            cell.textLabel.text = @"CDD";
            break;
    }
    
    return cell;
}


#pragma UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *VC;
    switch (indexPath.row) {
        case 0:
            VC = [[MVCController alloc] init];
            break;
        case 1:
            VC = [[MVPController alloc] init];
            break;
        case 2:
            VC = [[MVVMController alloc] init];
            break;
        default:
            VC = [[CDDController alloc] init];
            break;
    }
    
    [self.navigationController pushViewController:VC animated:true];
}

@end
