//
//  MVCController.m
//  架构设计
//
//  Created by Kerain on 2017/6/30.
//  Copyright © 2017年 广州市九章信息科技有限公司. All rights reserved.
//

#import "MVCController.h"
#import "MVCView.h"
#import "Paper.h"

@interface MVCController () <MVCViewDelegate>

@property (nonatomic,strong) MVCView *myView;
@property (nonatomic,strong) Paper *paper;

@end

@implementation MVCController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"MVC";
    
    // MVCView 初始化  通过代理传递事件给 MVCController
    self.myView = [[MVCView alloc] initWithFrame:CGRectMake(50, 64, 300, 400)];
    self.myView.delegate = self;
    
    // MVCModel 初始化  实例数据
    self.paper = [[Paper alloc] init];
    self.paper.content = @"lky";
    
    
    [self.view addSubview:self.myView];
    
    // MVCController 让 MVCView执行打印任务  或者是渲染
    [self printPaper];
    
}

- (void)printPaper{
   
    [self.myView printOnView:self.paper];
    
}


#pragma MVCViewDelegate
-(void)onPrintClick{
    NSLog(@"MVCController 接收到 MVCView传递的事件 ");
}






@end
