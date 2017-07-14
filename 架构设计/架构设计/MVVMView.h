//
//  MVVMView.h
//  架构设计
//
//  Created by Kerain on 2017/7/14.
//  Copyright © 2017年 广州市九章信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVVMViewModel.h"

@interface MVVMView : UIView

- (void)setWithViewModel:(MVVMViewModel *)viewModel;

@end
