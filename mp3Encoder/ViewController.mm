//
//  ViewController.m
//  mp3Encoder
//
//  Created by lina on 2020/6/22.
//  Copyright © 2020 lina.com.RemindWidget. All rights reserved.
//

#import "ViewController.h"
#include "Mp3Encoder.hpp"



@interface ViewController ()

@end

@implementation ViewController

- (IBAction)mp3Encoder:(id)sender {
        
    NSString *pcmFilePath = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"vocal.pcm"];
    const char *pcm_filePath = [pcmFilePath cStringUsingEncoding:NSUTF8StringEncoding];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [paths objectAtIndex:0];
    NSString *mp3FilePath = [documentsDir stringByAppendingPathComponent:@"vocal.mp3"];
    NSLog(@"%@",mp3FilePath);
    const char *mp3_filePath = [mp3FilePath cStringUsingEncoding:NSUTF8StringEncoding];
    
    
    Mp3Encoder *encoder = new Mp3Encoder();
    encoder->Mp3Encoder::Init(pcm_filePath, mp3_filePath, 8000, 2, 128*1024);
    encoder->Encode();
    encoder->Destory();
    delete encoder;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
