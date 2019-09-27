import Foundation
import SwiftCLI

// Reel all fishes on the manifest file, update if required. 
public class Reel: Command {
    public func execute() throws {
        print("Reel!!!")
    }
}

extension Reel: Routable {
    public var name: String {
        get {
            return "reel"
        }
    }

    public var shortDescription: String {
        get {
            return "Reel all fishes in the manifest file"
        }
    }

    public var longDescription: String {
        get {
            return "Use this command to retrieve all fishes"
        }
    }
}
