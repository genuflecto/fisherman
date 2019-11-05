import SwiftCLI
import Foundation

public class SetConfig: Command {
    private let valueParam = Parameter()

    public func execute() throws {
        var repos: [String] = [
           DefaultRepo 
        ]
        if let currentRepos = UserDefaults.standard.stringArray(forKey: configUrlKey) {
            repos = currentRepos
        }

        // Currently only supports appends
        repos.append(valueParam.value)
        
        UserDefaults.standard.set(repos, forKey: configUrlKey)
        print(repos)
    }
}

extension SetConfig: Routable {
    public var name: String {
        get {
            return "set"
        }
    }

    public var shortDescription: String {
        get {
            return "Configure the fisherman settings"
        }
    }

    public var longDescription: String {
        get {
            return "Configure the fisherman settings"
        }
    }
}
