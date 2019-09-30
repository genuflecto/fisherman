import Foundation
import SwiftCLI

public class Init: Command {
    public func execute() throws {
        let fishermanPath = "\(FileManager.default.currentDirectoryPath)/Fisherman"
        if FileManager.default.fileExists(atPath: fishermanPath) {
            print("A Fisherman file exists.")
            return
        }

        let fileTemplate = """
        ---
        # Add dependencies in the form of a list
        # A dependency should contain a name & version
        #
        fishes: [
            # { \"name\": xcodetask, \"version\": \"1.0\" }
        ]
        ...
        """

        do {
            try fileTemplate.write(toFile: fishermanPath, atomically: true, encoding: .utf8)
        } catch let error {
            throw error
        }
    }
}

extension Init: Routable {
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


