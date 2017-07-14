//
//  Presenter.m
//  架构设计
//
//  Created by Kerain on 2017/6/30.
//  Copyright © 2017年 广州市九章信息科技有限公司. All rights reserved.
//

#import "Presenter.h"



@interface Presenter ()<MVPViewDelegate>



@end

@implementation Presenter


-(instancetype)init
{
    if (self = [super init]) {
        
        self.mvpModel = [[MVPModel alloc] init];
        self.mvpModel.content = @"line 0";
        
        
        self.mvpView = [[MVPView alloc] init];
        self.mvpView.frame = CGRectMake(0, 100, 300, 400);
        self.mvpView.delegate = self;
    }
    return self;
}



-(void)printTask
{
    [self.mvpView printOnViewWithContent:self.mvpModel.content];
}



#pragma MVPViewDelegate
-(void)printDoneClick{

    int rand = arc4random()%10;
    self.mvpModel.content = [NSString stringWithFormat:@"line %d",rand];
    [self.mvpView printOnViewWithContent:self.mvpModel.content];
}

@end
