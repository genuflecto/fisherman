import SwiftCLI
import Foundation

public class ResetConfig: Command {
    public func execute() throws {
        UserDefaults.standard.set([DefaultRepo], forKey: configUrlKey)
    }
}

extension ResetConfig: Routable {
    public var name: String {
        get {
            return "reset"
        }
    }

    public var shortDescription: String {
        get {
            return "Reset config settings"
        }
    }

    public var longDescription: String {
        get {
            return "Reset config settings"
        }
    }
}

