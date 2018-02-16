//
//  constants.swift
//  eatsUITests
//
//  Created by Deyvis Ferreira on 16/02/2018.
//  Copyright © 2018 Deyvis Ferreira. All rights reserved.
//

import Foundation
import XCTest

extension XCTestCase {

    func waitForElementToAppear(element: XCUIElement, timeout: TimeInterval = 5) {
        let existsPredicate = NSPredicate(format: "exists == true")
        expectation(for: existsPredicate, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: timeout, handler: nil)
    }
}
