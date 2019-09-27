import SwiftCLI

public class Init: Command {
    public func execute() throws {
        print("init")
    }
}

extension Release: Routable {
    public var name: String {
        get {
            return "init"
        }
    }

    public var shortDescription: String {
        get {
            return "Initializes a manifest file"
        }
    }

    public var longDescription: String {
        get {
            return "Use this command to initialize a manifest file." 
        }
    }
}


