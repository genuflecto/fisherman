import SwiftCLI
import Foundation

public let DefaultRepo: String = "https://sin1hg.gemalto.com/hg/MSH/IDSS/Client/Alpha/util"
public let configUrlKey: String = "ConfigUrlKey"

public class ConfigGroup: CommandGroup {
    public var children: [Routable] = [ SetConfig(), ResetConfig() ]
    public var aliases: [String: String] = [:]
}

extension ConfigGroup: Routable {
    public var name: String {
        get {
            return "config"
        }
    }

    public var shortDescription: String {
        get {
            return "Config commands to manage fisherman repositories"
        }
    }

    public var longDescription: String {
        get {
            return "Config commands to manage fisherman repositories"
        }
    }
}


