//
//  CommetModel.m
//  FriendCircleDemo
//
//  Created by 花花 on 2017/8/15.
//  Copyright © 2017年 花花. All rights reserved.
//

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

#import "CommetModel.h"

@implementation CommetModel

/* 属性都是可选的  如果Model中属性多了 也不会崩溃 */
+ (BOOL)propertyIsOptional:(NSString*)propertyName {
    return  YES;
}


- (instancetype)initWithDictionary:(NSDictionary *)dict error:(NSError *__autoreleasing *)err {
    if (self = [super initWithDictionary:dict error:err]) {
        
        _contentHeight = 20;
        if (_cmtMsg) {
            
            NSDictionary * attributes = @{NSFontAttributeName : [UIFont systemFontOfSize:15]};
            CGSize size_con = [_cmtMsg boundingRectWithSize:CGSizeMake(kScreenWidth-90, 10000) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attributes context:nil].size;
            
            _contentHeight = size_con.height+5;
        }
        
        _cellHeight = 20 + 20+ 15 +_contentHeight + 20 + 15 + 15;
    }
    
    return self;
}
@end
