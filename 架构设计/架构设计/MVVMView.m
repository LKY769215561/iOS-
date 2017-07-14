//
//  MVVMView.m
//  架构设计
//
//  Created by Kerain on 2017/7/14.
//  Copyright © 2017年 广州市九章信息科技有限公司. All rights reserved.
//

#import "MVVMView.h"
#import "NSObject+FBKVOController.h"

@interface MVVMView ()

@property (nonatomic,strong) UILabel *labelContent;
@property (nonatomic,strong) UIButton *btn;
@property (nonatomic,weak) MVVMViewModel *vmViewModel;

@end

@implementation MVVMView

-(instancetype)init{
    if (self = [super init]) {
        
        self.backgroundColor = [UIColor grayColor];
        
        self.labelContent = [[UILabel alloc] init];
        self.labelContent.backgroundColor = [UIColor whiteColor];
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
    
    [self.vmViewModel onPrintClick];
    
}

-(void)setWithViewModel:(MVVMViewModel *)viewModel
{
  __weak typeof(self) weakSelf = self;
  self.vmViewModel = viewModel;
  [self.KVOController observe:viewModel keyPath:@"contentStr" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionInitial block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
    
      NSString *newContent = change[NSKeyValueChangeNewKey];
      weakSelf.labelContent.text = newContent;

  }];
}



@end
