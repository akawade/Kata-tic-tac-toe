//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by Avinash Kawade on 14/05/23.
//

import XCTest
@testable import TicTacToe

class TicTacToeTests: XCTestCase {

    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_initBoardCells() throws {
        //Arrange
        let cells = [UIButton(),UIButton(),UIButton(),
                     UIButton(),UIButton(),UIButton(),
                     UIButton(),UIButton(),UIButton()]
        let ticTacToeVModel = TicTacToeViewModel(cells: cells)
        //Act
      
        //ticTacToeVModel.initBoardCells(cells: <#T##[UIButton]#>)
        
        //Assert
        XCTAssertEqual(ticTacToeVModel.board.count, 9)
    }

    func test_checkAllBoardCellNotMarked() throws {
        let a1 =  UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a1.setTitle("X", for: .normal)
        let a2 =  UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a2.setTitle("O", for: .normal)
        let a3 =  UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a3.setTitle("X", for: .normal)
        print("A1 - \(a1.title(for: .normal))")
        print("A2 - \(a2.title(for: .normal))")
        print("A3 - \(a3.title(for: .normal))")

        let cells = [a1,a2,a3,
                     UIButton(),UIButton(),UIButton(),
                     UIButton(),UIButton(),UIButton()]
        let ticTacToeVModel = TicTacToeViewModel(cells: cells)
        
       // print("Empty Cells - \(ticTacToeVModel.board.count)")
        XCTAssertTrue(ticTacToeVModel.checkBoardCellNotMarked())
        
    }

}
