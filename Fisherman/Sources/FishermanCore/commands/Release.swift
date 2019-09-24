import SwiftCLI

public class Release: Command {
    public func execute() throws {
        print("release")
    }
}

extension Release: Routable {
    public var name: String {
        get {
            return "release"
        }
    }

    public var shortDescription: String {
        get {
            return "Release a fish"
        }
    }

    public var longDescription: String {
        get {
            return "Use this command to remove a fish"
        }
    }
}

