//
//  RepositoryTests.swift
//  PluginTests
//
//  Created by Matias Roldan on 26/07/2023.
//

import XCTest
@testable import Plugin

class RepositoryTests: XCTestCase {
    
    private enum Constant {
        static let url = "https://public.softgames.com/code-challenge/manifest.json"
    }
    
    func testDecodeJson() {
        // given
        let url = URL(string: Constant.url)!
        let repository = Repository(url: url)
        
        do {
            let data = try getData(fromJSON: "response")
            
            // when
            let trackList = try repository.decodeJson(data: data)
            
            //then
            XCTAssertEqual(trackList.data.count, 3)
        } catch {
            XCTFail("Response amount is 0")
        }
    }
    
    private func getData(fromJSON fileName: String) throws -> Data {
        guard let url = Bundle(for: type(of: self)).url(forResource: fileName, withExtension: "json") else {
            XCTFail("Missing File: \(fileName).json")
            throw NSError()
        }

        do {
            let data = try Data(contentsOf: url)
            return data
        } catch {
            throw error
        }
    }
}
