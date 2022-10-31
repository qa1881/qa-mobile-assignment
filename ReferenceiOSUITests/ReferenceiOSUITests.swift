//
//  ReferenceiOSUITests.swift
//  ReferenceiOSUITests
//
//  Created by Alper Gunay on 30.10.22.
//  Copyright © 2022 ABN AMRO. All rights reserved.
//

import XCTest

class ReferenceiOSUITests: Helpers {

    override func setUp() {
        launchApp()
    }

    func testCheckDashboardDisplay_testId1()    {
        checkingDashboardScreen()
        }
    
    func testCheckAmountDisplaying_testId2()    {
        clickAmountButton()
        checkAmountDisplaying()
        }
    
    func testCheckButtonChangesAmount_testId3(){
        clickAmountButton()
        let amountLabel1 = getAmount()
        clickAmountButton()
        let amountLabel2 = getAmount()
        checkAmountValuesAreDifferent(amount1: amountLabel1, amount2: amountLabel2)
    }
}
