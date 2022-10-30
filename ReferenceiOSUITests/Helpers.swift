//
//  Helpers.swift
//  ReferenceiOSUITests
//
//  Created by Alper Gunay on 30.10.22.
//  Copyright © 2022 ABN AMRO. All rights reserved.
//

import XCTest

class Helpers: XCTestCase {
    let app = XCUIApplication()
    let currencyText = "€"

    func launchApp(){
        continueAfterFailure = false
        app.launch()
    }
    
    func checkingDashboardScreen(){
        let welcomingTextLabel = app.staticTexts["Hello"]
        XCTAssert(welcomingTextLabel.waitForExistence(timeout: 3))
        let amountButton = app.buttons["Button"]
        XCTAssert(amountButton.waitForExistence(timeout: 3))
    }
    
    func clickAmountButton(){
        let amountButton = app.buttons["Button"]
        amountButton.tap()
    }
    
    func checkAmountDisplaying(){
        let welcomingTextLabel = app.staticTexts["Hello"]
        XCTAssertFalse(welcomingTextLabel.waitForExistence(timeout: 3))
        let predicate = NSPredicate(format: "label CONTAINS[c] %@", currencyText)
        let amount = app.staticTexts.containing(predicate)
        XCTAssert(amount.count > 0)
    }
    
    func getAmount() -> String {
        let amount = app.staticTexts.firstMatch.label
        return amount
    }
    
    func checkAmountValuesAreDifferent(amount1: String, amount2: String){
        XCTAssertFalse(amount1.isEqual(amount2))
    }
}
