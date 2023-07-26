import XCTest
@testable import Plugin

class AssignmentTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    private enum Constant {
        static let url = "https://public.softgames.com/code-challenge/manifest.json"
    }
    
    func testGetLatestCover() {
        // given
        let implementation = getAssignment()
        let expectation = XCTestExpectation(description: "testGetLatestCover")
        
        // when
        implementation.getLatestCover { covers in
            // then
            XCTAssertNotEqual(covers.count, 0)
            expectation.fulfill()
        } onError: { _ in
            // then
            XCTFail("Response amount is 0")
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 2)
    }
    
    private func getAssignment() -> Assignment {
        let url = URL(string: Constant.url)!
        let repository = Repository(url: url)
        let viewModel = ViewModel(repository: repository)
        return Assignment(viewModel: viewModel)
    }
}
