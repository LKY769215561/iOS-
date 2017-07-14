//
//  MVCView.h
//  架构设计
//
//  Created by Kerain on 2017/6/30.
//  Copyright © 2017年 广州市九章信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Paper.h"

@protocol MVCViewDelegate <NSObject>

- (void)onPrintClick;

@end
@interface MVCView : UIView

- (void)printOnView:(Paper *)paper;

/**
 *  <#Description#>
 */
@property (nonatomic,weak) id <MVCViewDelegate>delegate;

@end
