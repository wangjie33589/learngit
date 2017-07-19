//
//  ViewController.m
//  文字转语音
//
//  Created by Zy on 16/3/11.
//  Copyright © 2016年 zzg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

{
    UIAlertController    *AlertController;
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}
-(void)timeMethod:(NSTimer *)Timer
{
    AlertController = (UIAlertController *)[Timer userInfo];
    
    [AlertController dismissViewControllerAnimated:YES completion:nil];
    
    AlertController = NULL;
}
-(void)showAlert:(NSString *)msg
{
    AlertController = [UIAlertController alertControllerWithTitle:nil message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeMethod:) userInfo:AlertController repeats:YES];
    
    [self presentViewController:AlertController animated:YES completion:nil];
}
- (IBAction)changeButtonClick:(UIButton *)sender
{
    
    if ([self.textView.text isEqual:@""])
    {
         
        [self showAlert:@"请输入文字"];
    }
    else
    {
        AVSpeechSynthesizer *av = [[AVSpeechSynthesizer alloc]init];
        AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc]initWithString:self.textView.text]; //需要转换的文本
        [av speakUtterance:utterance];
    }
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.textView resignFirstResponder];
    
}
@end
