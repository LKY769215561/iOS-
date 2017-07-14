//
//  MVVMViewModel.h
//  架构设计
//
//  Created by Kerain on 2017/7/14.
//  Copyright © 2017年 广州市九章信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVModel.h"


@interface MVVMViewModel : NSObject

@property (nonatomic,copy) NSString *contentStr;

- (void)setWithModel:(MVVModel *)model;

- (void)onPrintClick;

@end
