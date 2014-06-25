//
//  AneMoneUtil.m
//  AneMone
//
//  Created by HagaHitoshi on 2014/06/25.
//  Copyright (c) 2014年 GClue, inc. All rights reserved.
//

#import "AneMoneUtil.h"

@implementation AneMoneUtil

+(NSString*)anemoneMethod1:(NSString *)param {
    if([param isEqualToString:kAneMoneStringSuccess]) {
        return kAneMoneStringSuccess;
    }
    
    return kAneMoneStringFailed;
}
+(AneMoneType)anemoneMethod2:(AneMoneType)param1 param2:(AneMoneType)param2 {
    
    if(param1 == AneMoneSuccess && param2 == AneMoneSuccess) {
        return AneMoneSuccess;
    }
    
    return AneMoneError;
}

-(void)anemoneMethod3:(NSString *)param withError:(NSError *__autoreleasing *)error {
    if(![param isEqualToString:kAneMoneStringSuccess]) {
        if(*error) {
            *error = [[NSError alloc] init];
        }
    }
}
-(void)anemoneMethod4:(AneMoneType)type withBlocks:(void (^)(AneMoneType type))block {
    if(type == AneMoneSuccess) {
        block(AneMoneSuccess);
    }else {
        block(AneMoneError);
    }
}

@end
