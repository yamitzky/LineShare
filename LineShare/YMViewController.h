//
//  YMViewController.h
//  LineShare
//
//  Created by xd on 12/12/29.
//  Copyright (c) 2012年 Yamitzky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YMViewController : UIViewController
- (IBAction)shareViaLine:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end
