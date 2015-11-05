//
//  Flowlayout.m
//  SuperSlide
//
//  Created by 杨晓晨 on 15/11/5.
//  Copyright © 2015年 杨晓晨. All rights reserved.
//

#import "Flowlayout.h"

@implementation Flowlayout

+ (Flowlayout *)flowlayout {
    Flowlayout *layout = [[self alloc] init];
    
    CGFloat w = [UIScreen mainScreen].bounds.size.width;
    CGFloat h = [UIScreen mainScreen].bounds.size.height - 44 - 30;
    layout.itemSize = CGSizeMake(w, h);
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    return layout;
    
}

@end
