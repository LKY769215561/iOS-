//
//  MVVMController.m
//  架构设计
//
//  Created by Kerain on 2017/7/12.
//  Copyright © 2017年 广州市九章信息科技有限公司. All rights reserved.
//

#import "MVVMController.h"
#import "MVVModel.h"
#import "MVVMView.h"
#import "MVVMViewModel.h"


@interface MVVMController ()


@property (nonatomic,strong) MVVModel *vmModel;
@property (nonatomic,strong) MVVMView *vmView;
@property (nonatomic,strong) MVVMViewModel *vmViewModel;

@end

@implementation MVVMController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"MVVM";
    
    
    self.vmView = [[MVVMView alloc] init];
    self.vmView.frame = CGRectMake(20, 100, 300, 400);
    [self.view addSubview:self.vmView];
    
    self.vmModel = [[MVVModel alloc] init];
    self.vmModel.content = @"line 0";
    
    
    self.vmViewModel = [[MVVMViewModel alloc] init];
    [self.vmViewModel setWithModel:self.vmModel];
    [self.vmView setWithViewModel:self.vmViewModel];

}


- (void)dealloc
{
    NSLog(@"MVVMController  死");
}


@end
