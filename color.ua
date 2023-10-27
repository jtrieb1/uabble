Isos ← &i "isos.ua"
HRI ← Isos "HRI"
HIR ← Isos "HIR"

# Convert to color space via lerp between min/max
ColorMap ← ∺(×⊃(⊙;⊢⇌)(-⊢))⊂⊙(÷∶1-).⊃(/↧)(/↥)♭.

# Add color to a single pixel based on its value
# using individual R,G,B functions
# Functions passed should be homeomorphisms from
# R -> R.
CPar!!! ← ⊂↥0↧1HRI^1HIR∶⊂⊃(↥0↧1HRI^1HIR)(↥0↧1HRI^1HIR).

Colorize!!! ← ∵CPar!!!(^1)(^1)(^1)
