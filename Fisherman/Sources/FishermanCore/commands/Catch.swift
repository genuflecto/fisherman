import Foundation
import SwiftCLI

// Catch a Single fish
public class Catch: Command {
    public func execute() throws {
        print("Catch!!!")
    }
}

extension Catch: Routable {
    public var name: String {
        get {
            return "catch"
        }
    }

    public var shortDescription: String {
        get {
            return "Fetch a fish"
        }
    }

    public var longDescription: String {
        get {
            return "Use this command to retrieve a fish"
        }
    }
}

