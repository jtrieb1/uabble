BOps ← &i "binaryops.ua"
AMean ← BOps "AMean"
GMean ← BOps "GMean"
HMean ← BOps "HMean"

# Useful arity-1 matrix functions
FlipH ← ⇌
RotCCW ← ⍉⇌
RotCW ← ⇌⍉
FlipV ← RotCW∘FlipH∘RotCCW
AVig ← AMean AMean ⊃(RotCCW)(RotCW)∶AMean FlipV..
GVig ← GMean GMean ⊃(RotCCW)(RotCW)∶GMean FlipV..
HVig ← HMean HMean ⊃(RotCCW)(RotCW)∶HMean FlipV..
RandomOneAry ← (AVig|GVig|HVig)⌊×3
