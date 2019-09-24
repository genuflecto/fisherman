import XCTest

import fishermanTests

var tests = [XCTestCaseEntry]()
tests += fishermanTests.allTests()
XCTMain(tests)
