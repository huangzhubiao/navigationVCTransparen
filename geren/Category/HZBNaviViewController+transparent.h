//
//  HZBNaviViewController+transparent.h
//  geren
//
//  Created by ios on 2018/8/27.
//  Copyright © 2018年 ios. All rights reserved.
//

#import "HZBNaviViewController.h"

@interface HZBNaviViewController (transparent)<UINavigationBarDelegate, UINavigationControllerDelegate>

@property (copy, nonatomic) NSString *cloudox;
- (void)setNeedsNavigationBackground:(CGFloat)alpha;
@end
