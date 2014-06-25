//
//  AneMoneUtil.h
//  AneMone
//
//  Created by HagaHitoshi on 2014/06/25.
//  Copyright (c) 2014年 GClue, inc. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum ANEMONE_TYPE {
    AneMoneSuccess = 0,
    AneMoneError,
    AneMoneOther
}AneMoneType;

#define kAneMoneStringSuccess @"Success"
#define kAneMoneStringFailed @"Failed"

@interface AneMoneUtil : NSObject

// paramにkAneMoneStringSuccessのパラメータがあれば、Successを返す.それ以外はFailedを返す.
+(NSString*)anemoneMethod1:(NSString*)param;
// param1とparam2にAneMoneSuccessを渡すと、AneMoneSuccessが返る。それ以外はAneMoneErrorが返る
+(AneMoneType)anemoneMethod2:(AneMoneType)param1 param2:(AneMoneType)param2;

// paramに@"Success"以外が入っていれば、渡されたerrorアドレスに生成したNSErrorを渡して終了する.
-(void)anemoneMethod3:(NSString*)param withError:(NSError**)error;
// typeにAneMoneSuccessが入っていれば、blocks引数のAneMoneTypeにAneMoneSuccessが渡される。それ以外では、AneMoneErrorが渡される
-(void)anemoneMethod4:(AneMoneType)type withBlocks:(void(^)(AneMoneType type))block;

@end
