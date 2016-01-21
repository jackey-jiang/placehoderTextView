//
//  ViewController.m
//  Test
//
//  Created by AVGD—JK on 15/12/28.
//  Copyright © 2015年 AVGD. All rights reserved.
//

#import "ViewController.h"
#import "JKPlaceholderTextView.h"
@interface ViewController ()

@property(nonatomic, strong)JKPlaceholderTextView *textView;   /**< 自定义带有占位符的textView */

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建
    self.textView = [[JKPlaceholderTextView alloc] init];
    
    self.textView.font = [UIFont systemFontOfSize:20];
    self.textView.backgroundColor = [UIColor redColor];
    
    self.textView.placehoderText = @"A站一哥就是拽 傻逼统统靠边站";
    self.textView.limitTextLength = 15;

    [self.view addSubview:self.textView];
    
    self.textView.limitTextLengthBlock = ^{
      
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:[NSString stringWithFormat:@"字符个数超出限制"] delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        
        [alert show];
    };
    

}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    self.textView.frame = CGRectMake(50, 100, 250, 300);
}

@end
