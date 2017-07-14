//
//  MVCView.m
//  架构设计
//
//  Created by Kerain on 2017/6/30.
//  Copyright © 2017年 广州市九章信息科技有限公司. All rights reserved.
//

#import "MVCView.h"


@interface MVCView()

/**
 *  拥有数据model
 */
@property (nonatomic,weak) Paper *paper;

@end

@implementation MVCView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor blueColor];
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(100, 100, 80, 50);
        btn.backgroundColor = [UIColor whiteColor];
        [btn setTitle:@"打印任务" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
    }
    return self;
}

-(void)printOnView:(Paper *)paper
{
    self.paper = paper;
    self.backgroundColor = [UIColor lightGrayColor];
    NSLog(@"%@---MVCView接收到打印任务",paper.content);
}



- (void)btnClick{

    if ([self.delegate respondsToSelector:@selector(onPrintClick)]) {
        [self.delegate onPrintClick];
    }
}

@end
