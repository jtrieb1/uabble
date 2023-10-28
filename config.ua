# ##### Imports
Seqs ← &i "sequences.ua"
  PowerSequence ← Seqs "PowerSequence"
Samples ← &i "samples.ua"
  Mandelbrot ← Samples "Mandelbrot"
UnOps ← &i "unaryops.ua"
  AVig ← UnOps "AVig"
  GVig ← UnOps "GVig"
  HVig ← UnOps "HVig"

# ##### Helpers
# Put any functions that help generate settings here
RandomGridReducer ← &i "binaryops.ua" "RandomTwoAry"
RandomModReducer ← &i "binaryops.ua" "RandomTwoAry"

# ##### Constants
GeneratedImageSize ← 1680
GridModulus ← 420
ModSequence ← PowerSequence 3 10
CNow ← now
UseSnapshots ← 1
# Overlay ← Mandelbrot GridModulus

# ##### Functions
ModSeqReduce!! ← /^2≐◿⊙^1

# # Base
GridReducer ← &i "binaryops.ua" "GMean"
ModReducer ← &i "binaryops.ua" "AMean"
Preprocessor ← HVig

# # Colorize
RedFn ← ⁿ∶e
GreenFn ← |1 +1ₙ e
BlueFn ← |1 ₙ2
