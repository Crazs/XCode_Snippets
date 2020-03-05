//___FILEHEADER___

#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

- (instancetype)init{
    self = [super init];
    if (self) {
        [self createSubView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self createSubView];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder{
    self = [super initWithCoder:coder];
    if (self) {
        [self createSubView];
    }
    return self;
}

- (void)createSubView{
    //初始化子视图
    [self makeSubViewsLayout];
}

- (void)makeSubViewsLayout{
    //添加约束
}

@end
