//
//  navedrov_lab_5Tests.m
//  navedrov_lab_5Tests
//
//  Created by Admin on 27.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "StudentService.h"

@interface navedrov_lab_5Tests : XCTestCase

@end

@implementation navedrov_lab_5Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)test001_initWithMarks {
    StudentService *servise = [[StudentService alloc] initWithMarks:@[@"4",@"5",@"2"]];
    XCTAssertTrue(servise.marks.count == 3, @"Wrong object initialization ");
}

- (void)test002__isValidMarks {
    StudentService *servise = [[StudentService alloc] initWithMarks:@[@"4",@"11",@"3",@"32",@"5"]];
    StudentService *servise2 = [[StudentService alloc] initWithMarks:@[@"4",@"5",@"3",@"5",@"5"]];
    StudentService *servise3 = [[StudentService alloc] initWithMarks:@[@"4",@"-2",@"2",@"5",@"2"]];
    XCTAssertTrue(![servise isValidMarks], @"Wrong is valid marks method ");
    XCTAssertTrue([servise2 isValidMarks], @"Wrong is valid marks method ");
    XCTAssertTrue(![servise3 isValidMarks], @"Wrong is valid marks method ");
}

- (void)test003_isPermittedToSession {
    StudentService *servise = [[StudentService alloc] initWithMarks:@[@"4",@"5",@"3",@"5",@"5"]];
    StudentService *servise2 = [[StudentService alloc] initWithMarks:@[@"4",@"2",@"3",@"2"]];
    XCTAssertTrue([servise isPermittedToSession], @"Wrong is permitted to session method ");
    XCTAssertTrue(![servise2 isPermittedToSession], @"Wrong is permitted to session method ");

}

- (void)test004_isStipendia {
    StudentService *servise = [[StudentService alloc] initWithMarks:@[@"4",@"4",@"4",@"5",@"5"]];
    StudentService *servise2 = [[StudentService alloc] initWithMarks:@[@"4",@"2",@"3",@"2"]];
    XCTAssertTrue([servise isStipendia], @"Wrong is stipendia method ");
    XCTAssertTrue(![servise2 isStipendia], @"Wrong is stipendia method ");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
