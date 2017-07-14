//
//  Presenter.h
//  架构设计
//
//  Created by Kerain on 2017/6/30.
//  Copyright © 2017年 广州市九章信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPModel.h"
#import "MVPView.h"


@interface Presenter : NSObject

@property (nonatomic,strong) MVPView  *mvpView;

@property (nonatomic,strong) MVPModel  *mvpModel;

- (void)printTask;

@end
