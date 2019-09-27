import Foundation
import SwiftCLI

public final class Fisherman {
    private let cli = CLI(name: "fisherman")

    public init() {
        cli.commands = [Catch(), Release(), Reel(), Init()]
    }

    public func run() throws {
        cli.goAndExit()
    }
}
