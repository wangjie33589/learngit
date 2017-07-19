//
//  ViewController.h
//  文字转语音
//
//  Created by Zy on 16/3/11.
//  Copyright © 2016年 zzg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVSpeechSynthesis.h>
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (weak, nonatomic) IBOutlet UIButton *btn;


@end

