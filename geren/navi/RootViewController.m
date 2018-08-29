//
//  RootViewController.m
//  geren
//
//  Created by ios on 2018/8/27.
//  Copyright © 2018年 ios. All rights reserved.
//

#import "RootViewController.h"
#import "Masonry.h"
#import "HZBBaseViewController+transparent.h"
#import "HZBNaviViewController+transparent.h"
#import "testViewController.h"


@interface RootViewController ()
@property (nonatomic,weak) UIImageView *logoImageView;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self initsubviews];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.navBarBgAlpha = @"0.0";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)initsubviews{
    
    CGFloat screenH = self.view.frame.size.height;
    CGFloat screenW = self.view.frame.size.width;
    CGFloat space = 10.10;
    CGFloat subviewH = (screenH - 3 * space)/3;
    
    UIImageView *logoImageView = [[UIImageView alloc] init];
    self.logoImageView = logoImageView;
    logoImageView.image = [UIImage imageNamed:@"背景"];
    [self.view addSubview:logoImageView];
    [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
        make.left.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(screenW, subviewH));
    }];
    
    
    UIButton *button = [[UIButton alloc] init];
    button.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(logoImageView.mas_bottom).offset(20);
        make.left.mas_equalTo(8);
        make.right.mas_equalTo(-8);
        make.height.mas_equalTo(50);
    }];
    [button addTarget:self action:@selector(clickbutton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)clickbutton{
    testViewController *vc = [[testViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
