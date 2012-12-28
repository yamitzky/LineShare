//
//  YMViewController.m
//  LineShare
//
//  Created by xd on 12/12/29.
//  Copyright (c) 2012年 Yamitzky. All rights reserved.
//

#import "YMViewController.h"

@implementation NSString(stringWithURLEncoding)

- (NSString *)stringWithURLEncoding
{
    // ref: http://blog.daisukeyamashita.com/post/1686.html
    return (__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(
      NULL,
      (CFStringRef)self,
      NULL,
      (CFStringRef)@"!*'();:@&=+$,/?%#[]",
      kCFStringEncodingUTF8 );
}

@end

@interface YMViewController ()

@end

@implementation YMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setTextField:nil];
    [super viewDidUnload];
}

- (IBAction)shareViaLine:(id)sender {
    NSString *contentType = @"text";
    NSString *contentKey = [_textField.text stringWithURLEncoding];
    NSString *urlString = [NSString
                           stringWithFormat: @"http://line.naver.jp/R/msg/%@/?%@",
                           contentType, contentKey];

    NSLog(@"%@", urlString);
    NSURL *url = [NSURL URLWithString:urlString];
    [[UIApplication sharedApplication] openURL:url];
}
@end
