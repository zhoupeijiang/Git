//
//  ViewController.m
//  02-UILabelDemo
//
//  Created by qingyun on 15/8/27.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",NSStringFromCGRect([UIScreen mainScreen].bounds));
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(-200, 100, 200, 100)];
    label.backgroundColor = [UIColor grayColor];
    //label.text = @"hello 青云，hello world,欢迎来到青云学习ios";
    //label.text = @"hello iPhone";
    
    //设置属性文本
    NSString *text = @"hello 青云，hello world";
    NSMutableAttributedString *textLabelStr = [[NSMutableAttributedString alloc] initWithString:text];
    
    [textLabelStr setAttributes:@{NSBackgroundColorAttributeName : [UIColor blueColor],NSFontAttributeName : [UIFont systemFontOfSize:17]} range:NSMakeRange(6, 2)];
    
    label.attributedText = textLabelStr;
    
    //label.font = [UIFont systemFontOfSize:17];
    //label.textColor = [UIColor redColor];
    label.numberOfLines = 2;
    label.lineBreakMode = NSLineBreakByTruncatingMiddle;
    
    label.highlightedTextColor = [UIColor blackColor];
    label.highlighted = YES;
    label.textAlignment = NSTextAlignmentRight;
    
    
    
    [self.view addSubview:label];
    
#if 0
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2];
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationRepeatCount:LONG_MAX];
    label.frame = CGRectMake(375, 100, 200, 100);
    [UIView commitAnimations];
    
    
    [UIView animateWithDuration:2 animations:^{
        label.frame = CGRectMake(375, 100, 200, 100);
    } completion:^(BOOL finished) {
        
    }];
#endif
    
    [UIView animateWithDuration:2 delay:0 options:UIViewAnimationOptionAutoreverse|UIViewAnimationOptionRepeat animations:^{
        label.frame = CGRectMake(375, 100, 200, 100);
    } completion:^(BOOL finished) {
        
    }];
    
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
