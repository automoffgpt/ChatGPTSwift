import XCTest
@testable import ChatGPTSwift

final class ChatGPTSwiftTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        let api = ChatGPTAPI(apiKey: "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")
        
        Task {
            do {
                let response = try await api.sendMessage(text: "What is ChatGPT?")
                print(response)
            } catch {
                print(error.localizedDescription)
            }
        }
        
        
    }
}
