//
//  AneMoneUtilTest.m
//  AneMone
//
//  Created by HagaHitoshi on 2014/06/25.
//  Copyright (c) 2014年 GClue, inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AneMoneUtil.h"

@interface AneMoneUtilTest : XCTestCase

@end

@implementation AneMoneUtilTest

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

#pragma mark - private methods

-(void)aaa {
    //!!!: ここはテストに含まれない.
}

#pragma mark - Tests

-(void)testAnemoneMethod1 {
    NSString* ret = [AneMoneUtil anemoneMethod1:kAneMoneStringSuccess];
    
    if(![ret isEqualToString:kAneMoneStringSuccess]) {
        XCTFail(@"anemoneMethod1 failed");
    }
}

-(void)testAnemoneMethod2 {
    AneMoneType ret = [AneMoneUtil anemoneMethod2:AneMoneSuccess param2:AneMoneSuccess];
    
    if(ret != AneMoneSuccess) {
        XCTFail(@"anemoneMethod2 failed");
    }
}

-(void)testAnemoneMethod3 {
    AneMoneUtil* util = [[AneMoneUtil alloc] init];
    if(!util) {
        XCTFail(@"AneMoneUtil instance is null");
    }
    
    NSError* error = nil;
    [util anemoneMethod3:kAneMoneStringSuccess withError:&error];
    if(error) {
        XCTFail(@"anemoneMethod3 failed");
    }
    
}

-(void)testAnemoneMethod4 {
    AneMoneUtil* util = [[AneMoneUtil alloc] init];
    if(!util) {
        XCTFail(@"AneMoneUtil instance is null");
    }

    [util anemoneMethod4:AneMoneSuccess withBlocks:^(AneMoneType type) {
        if(type != AneMoneSuccess) {
            XCTFail(@"anemoneMethod4 failed");
        }
    }];
}



@end
