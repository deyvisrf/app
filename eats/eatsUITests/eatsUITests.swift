//
//  eatsUITests.swift
//  eatsUITests
//
//  Created by Deyvis Ferreira on 13/02/2018.
//  Copyright © 2018 Deyvis Ferreira. All rights reserved.
//

import XCTest

class eatsUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAddMeals() {
        
        app.buttons["Nova avaliação"].tap()
        
        let nameTextField = app.textFields["ex.: Lazanha"]
        let notatextField = app.textFields["1 ~ 5"]
        let label = app.staticTexts["Parmegiana"]
        
        nameTextField.tap()
        nameTextField.typeText("Parmegiana")
        
        notatextField.tap()
        notatextField.typeText("10")
        
        app.buttons["Adicionar"].tap()
        
        waitForElementToAppear(element: label)
        XCTAssert(label.exists)
        
    }
    
    func testnew() {
        
        app.buttons["Nova avaliação"].tap()
        
        let nameTextField = app.textFields["ex.: Lazanha"]
        let notatextField = app.textFields["1 ~ 5"]
        let label = app.staticTexts["Parmegiana"]
        
        nameTextField.tap()
        nameTextField.typeText("Parmegiana")
        
        notatextField.tap()
        notatextField.typeText("10")
        
        app.buttons["Adicionar"].tap()
        
        waitForElementToAppear(element: label)
        XCTAssert(label.exists)
        
    }
}
