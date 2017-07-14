//
//  MVVMViewModel.m
//  架构设计
//
//  Created by Kerain on 2017/7/14.
//  Copyright © 2017年 广州市九章信息科技有限公司. All rights reserved.
//

#import "MVVMViewModel.h"
#import "FBKVOController.h"


@interface MVVMViewModel ()

@property (nonatomic,weak) MVVModel *model;

@end

@implementation MVVMViewModel

// 初始化ViewModel
-(void)setWithModel:(MVVModel *)model{

    self.model = model;
    self.contentStr = model.content;
}

// 响应View事件产生
-(void)onPrintClick
{
    int rand = arc4random()%10;
    self.model.content = [NSString stringWithFormat:@"line %d",rand];
    self.contentStr = self.model.content;
}

@end
