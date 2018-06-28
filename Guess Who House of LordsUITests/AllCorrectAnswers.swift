//
//  AllCorrectAnswers.swift
//  Guess Who House of LordsUITests
//
//  Created by HORROCKS, Christine on 28/06/2018.
//  Copyright © 2018 HORROCKS, Christine. All rights reserved.
//

import XCTest

class AllCorrectAnswers: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let app = XCUIApplication()
        
        app.buttons["Commence"].tap()
        
        let collectionViewsQuery = app.collectionViews
        let text = app.staticTexts
        let imgView = app.images
        
        XCTAssertTrue(imgView["img1"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Grey-Thompson "].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Mar"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Finn"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Altman"].exists)
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Grey-Thompson "]/*[[".cells.buttons[\"Baroness Grey-Thompson \"]",".buttons[\"Baroness Grey-Thompson \"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let nextButton = app.buttons["Next >"]
        let prevButton = app.buttons["< Previous"]
        
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img2"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Helic"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Eaton"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Gardner"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Bertin"]/*[[".cells.buttons[\"Baroness Bertin\"]",".buttons[\"Baroness Bertin\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        collectionViewsQuery.buttons["Baroness Bertin"].tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img3"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Young"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness O'Loan"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Swanborough"]/*[[".cells.buttons[\"Baroness Swanborough\"]",".buttons[\"Baroness Swanborough\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Warwick"].exists)
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Swanborough"]/*[[".cells.buttons[\"Baroness Swanborough\"]",".buttons[\"Baroness Swanborough\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img4"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Quin"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Boothroyd"]/*[[".cells.buttons[\"Baroness Boothroyd\"]",".buttons[\"Baroness Boothroyd\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Tonge"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Sherlock"].exists)
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Boothroyd"]/*[[".cells.buttons[\"Baroness Boothroyd\"]",".buttons[\"Baroness Boothroyd\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img5"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Flather"]/*[[".cells.buttons[\"Baroness Flather\"]",".buttons[\"Baroness Flather\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Ewart-Biggs"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Cox"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Hogg"].exists)
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Flather"]/*[[".cells.buttons[\"Baroness Flather\"]",".buttons[\"Baroness Flather\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img6"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Jolly"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Scott"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Ford"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Warsi"]/*[[".cells.buttons[\"Baroness Warsi\"]",".buttons[\"Baroness Warsi\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Warsi"]/*[[".cells.buttons[\"Baroness Warsi\"]",".buttons[\"Baroness Warsi\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img7"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Bishop of Gloucester"]/*[[".cells.buttons[\"Bishop of Gloucester\"]",".buttons[\"Bishop of Gloucester\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Bishop of Newcastle"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Archbishop of Canterbury"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Bishop of Durham"].exists)
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Bishop of Gloucester"]/*[[".cells.buttons[\"Bishop of Gloucester\"]",".buttons[\"Bishop of Gloucester\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img8"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Shields"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Wolf"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Fall"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Trumpington"]/*[[".cells.buttons[\"Baroness Trumpington\"]",".buttons[\"Baroness Trumpington\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Trumpington"]/*[[".cells.buttons[\"Baroness Trumpington\"]",".buttons[\"Baroness Trumpington\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img9"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Burt"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Featherstone"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Lawrence"]/*[[".cells.buttons[\"Baroness Lawrence\"]",".buttons[\"Baroness Lawrence\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Jowel"].exists)
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Lawrence"]/*[[".cells.buttons[\"Baroness Lawrence\"]",".buttons[\"Baroness Lawrence\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img10"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Wilkins"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Sugg"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Benjamin"]/*[[".cells.buttons[\"Baroness Benjamin\"]",".buttons[\"Baroness Benjamin\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Whitaker"].exists)
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Benjamin"]/*[[".cells.buttons[\"Baroness Benjamin\"]",".buttons[\"Baroness Benjamin\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(text["Your Score"].exists)
        XCTAssertTrue(text["10 / 10"].exists)
        XCTAssertTrue(text["Elevated to the Peerage"].exists)
        XCTAssertTrue(app.buttons["Restart"].exists)
    }
    
    func testAllIncorrect() {
        
        let app = XCUIApplication()
        
        app.buttons["Commence"].tap()
        
        let collectionViewsQuery = app.collectionViews
        let text = app.staticTexts
        let imgView = app.images
        
        XCTAssertTrue(imgView["img1"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Grey-Thompson "].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Mar"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Finn"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Altman"].exists)
        collectionViewsQuery.buttons["Baroness Altman"].tap()
        
        let nextButton = app.buttons["Next >"]
        let prevButton = app.buttons["< Previous"]
        
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img2"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Helic"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Eaton"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Gardner"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Bertin"]/*[[".cells.buttons[\"Baroness Bertin\"]",".buttons[\"Baroness Bertin\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        collectionViewsQuery.buttons["Baroness Eaton"].tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img3"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Young"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness O'Loan"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Swanborough"]/*[[".cells.buttons[\"Baroness Swanborough\"]",".buttons[\"Baroness Swanborough\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Warwick"].exists)
        collectionViewsQuery.buttons["Baroness Young"].tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img4"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Quin"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Boothroyd"]/*[[".cells.buttons[\"Baroness Boothroyd\"]",".buttons[\"Baroness Boothroyd\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Tonge"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Sherlock"].exists)
        collectionViewsQuery.buttons["Baroness Sherlock"].tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img5"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Flather"]/*[[".cells.buttons[\"Baroness Flather\"]",".buttons[\"Baroness Flather\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Ewart-Biggs"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Cox"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Hogg"].exists)
        collectionViewsQuery.buttons["Baroness Cox"].tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img6"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Jolly"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Scott"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Ford"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Warsi"]/*[[".cells.buttons[\"Baroness Warsi\"]",".buttons[\"Baroness Warsi\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        collectionViewsQuery.buttons["Baroness Jolly"].tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img7"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Bishop of Gloucester"]/*[[".cells.buttons[\"Bishop of Gloucester\"]",".buttons[\"Bishop of Gloucester\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Bishop of Newcastle"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Archbishop of Canterbury"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Bishop of Durham"].exists)
        collectionViewsQuery.buttons["Bishop of Durham"].tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img8"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Shields"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Wolf"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Fall"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Trumpington"]/*[[".cells.buttons[\"Baroness Trumpington\"]",".buttons[\"Baroness Trumpington\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        collectionViewsQuery.buttons["Baroness Wolf"].tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img9"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Burt"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Featherstone"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Lawrence"]/*[[".cells.buttons[\"Baroness Lawrence\"]",".buttons[\"Baroness Lawrence\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Jowel"].exists)
        collectionViewsQuery.buttons["Baroness Burt"].tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(imgView["img10"].exists)
        XCTAssertTrue(text["Who is this ?"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Wilkins"].exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Sugg"].exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Baroness Benjamin"]/*[[".cells.buttons[\"Baroness Benjamin\"]",".buttons[\"Baroness Benjamin\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssertTrue(collectionViewsQuery.buttons["Baroness Whitaker"].exists)
        collectionViewsQuery.buttons["Baroness Sugg"].tap()
        XCTAssertTrue(prevButton.exists)
        XCTAssertTrue(nextButton.exists)
        nextButton.tap()
        
        XCTAssertTrue(text["Your Score"].exists)
        XCTAssertTrue(text["0 / 10"].exists)
        XCTAssertTrue(text["Not Content"].exists)
        XCTAssertTrue(app.buttons["Restart"].exists)

    }
    
}
