import Foundation
import SwiftCLI
import Yams

// Reel all fishes on the manifest file, update if required. 
public class Reel: Command {
    public func execute() throws {
        print("Reel!!!")
        let fishermanPath = "\(FileManager.default.currentDirectoryPath)/Fisherman"
        do {
            let fishermanYaml = try String(contentsOfFile: fishermanPath, encoding: .utf8)
            let decoded = try YAMLDecoder().decode(Fisherman.self, from: fishermanYaml)
            setup(fishes: decoded.fishes)
        } catch let error {
            throw error
        }
    }

    private func setup(fishes: [Fish]) {
        try! Task.run("echo", "hello")
        for fish in fishes {
            print("\(fish.name) \(fish.version)")
        }
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
