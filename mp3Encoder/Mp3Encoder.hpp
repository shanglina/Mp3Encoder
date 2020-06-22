//
//  Mp3Encoder.hpp
//  mp3Encoder
//
//  Created by lina on 2020/6/22.
//  Copyright © 2020 lina.com.RemindWidget. All rights reserved.
//

#ifndef Mp3Encoder_hpp
#define Mp3Encoder_hpp

#include <stdio.h>
#include "lame.h"

class Mp3Encoder {
    
private:
    FILE *pcmFile;
    FILE *mp3File;
    lame_t lameClient;
    
    
public:
    Mp3Encoder();
    ~Mp3Encoder();
    int Init(const char* pcmFilePath,const char* mp3FilePath, int sampleRate, int channels, int butRate);
    void Encode();
    void Destory();
};

#endif /* Mp3Encoder_hpp */
