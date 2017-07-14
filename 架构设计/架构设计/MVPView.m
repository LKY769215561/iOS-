//
//  MVPView.m
//  架构设计
//
//  Created by Kerain on 2017/6/30.
//  Copyright © 2017年 广州市九章信息科技有限公司. All rights reserved.
//

#import "MVPView.h"

@interface MVPView ()


@property (nonatomic,strong) UILabel *labelContent;
@property (nonatomic,strong) UIButton *btn;

@end

@implementation MVPView

-(instancetype)init{
    if (self = [super init]) {
        
        self.backgroundColor = [UIColor grayColor];
        
        self.labelContent = [[UILabel alloc] init];
        self.labelContent.backgroundColor = [UIColor blueColor];
        self.labelContent.frame = CGRectMake(50, 100, 200, 40);
        [self addSubview:self.labelContent];
        
        self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btn.frame = CGRectMake(80, 300, 80, 40);
        self.btn.backgroundColor = [UIColor lightGrayColor];
        [self.btn setTitle:@"点击" forState:UIControlStateNormal];
        
        [self addSubview:self.btn];
        [self.btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        
    }

    return self;
}


- (void)btnClick{

    if (self.delegate) {
        [self.delegate printDoneClick];
    }
}

- (void)printOnViewWithContent:(NSString *)content
{
    self.labelContent.text = content;
}


@end
