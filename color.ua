Isos ← &i "isos.ua"
  HRI ← Isos "HRI"
  HIR ← Isos "HIR"

Settings ← &i "config.ua"
  RFn ← Settings "RedFn"
  GFn ← Settings "GreenFn"
  BFn ← Settings "BlueFn"

SnapshotTools ← &i "snapshot.ua"
  TakeSnapshot ← SnapshotTools "TakeSnapshot"

# Add color to a single pixel based on its value
# using individual R,G,B functions
# Functions passed should be homeomorphisms from
# R -> R.
CPar!!! ← ⊂↥0↧1HRI^1HIR∶⊂⊃(↥0↧1HRI^1HIR)(↥0↧1HRI^1HIR).

ColorizeStage ← |1 TakeSnapshot &pf "Finished colorize\n" ∵CPar!!!(RFn)(GFn)(BFn)
