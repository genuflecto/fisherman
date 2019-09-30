import FishermanCore

let fishermanCli = FishermanCLI()

do {
  try fishermanCli.run()
} catch {
  print ("Error occured: \(error)")
}
