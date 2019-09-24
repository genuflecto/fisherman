import FishermanCore

let fisherman = Fisherman()

do {
  try fisherman.run()
} catch {
  print ("Error occured: \(error)")
}
