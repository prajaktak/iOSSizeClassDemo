//
//  TestDemoTests.m
//  TestDemoTests
//
//  Created by Prajakta Kulkarni on 20/05/16.
//  Copyright © 2016 Prajakta Kulkarni. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "itemReturn.h"

@interface TestDemoTests : XCTestCase
@property (strong,nonatomic)itemReturn* myItemReturn;
@end

@implementation TestDemoTests

- (void)setUp {
    [super setUp];
    self.myItemReturn = [[itemReturn alloc]init];
    NSLog(@"This setup method is being called");
}

- (void)tearDown {
    NSLog(@"tearDown method has been called");
    self.myItemReturn = nil;
    [super tearDown];
}

+(void)setUp {
    NSLog(@"This setup+ method is being called");
}

+ (void)tearDown {
    NSLog(@"tearDown+ method has been called");
    
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}


-(void)testPassingTest
{
    XCTAssertNil(nil,"");
    NSLog(@"testPassingTest method is being called");
}
-(void)testFailingTest
{
    XCTAssertNil([self.myItemReturn returnMyItem],"");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
