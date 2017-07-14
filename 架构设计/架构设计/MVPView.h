//
//  MVPView.h
//  架构设计
//
//  Created by Kerain on 2017/6/30.
//  Copyright © 2017年 广州市九章信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol MVPViewDelegate <NSObject>

- (void)printDoneClick;

@end

@interface MVPView : UIView

- (void)printOnViewWithContent:(NSString *)content;
@property (nonatomic,weak) id<MVPViewDelegate> delegate;

@end
