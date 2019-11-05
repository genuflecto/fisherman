import Foundation
import SwiftCLI

public final class FishermanCLI {
    private let cli = CLI(name: "fisherman")

    public init() {
        cli.commands = [Catch(), Release(), Reel(), Init(), ConfigGroup()]
    }

    public func run() throws {
        cli.goAndExit()
    }
}
