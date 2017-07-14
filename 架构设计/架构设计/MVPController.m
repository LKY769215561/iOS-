
//
//  MVPController.m
//  架构设计
//
//  Created by Kerain on 2017/6/30.
//  Copyright © 2017年 广州市九章信息科技有限公司. All rights reserved.
//

#import "MVPController.h"
#import "Presenter.h"

@interface MVPController ()

/**
 *  <#Description#>
 */
@property (nonatomic,strong) Presenter *presenter;

@end

@implementation MVPController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"MVP";
    
    
    // 创建3个展示器   模型 视图
    self.presenter = [[Presenter alloc] init];
    [self.view addSubview:self.presenter.mvpView];
    
    // 告诉presenter执行打印任务
    [self.presenter printTask];
    
}



@end
