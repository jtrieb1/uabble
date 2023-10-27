# ##### Imports
BOps ← &i "binaryops.ua"
AMean ← BOps "AMean"
GMean ← BOps "GMean"
HMean ← BOps "HMean"

Color ← &i "color.ua"
Colorize!!! ← Color "CPar!!!"

GUtils ← &i "genericutils.ua"
SaveImage ← GUtils "SaveImage"

Homs ← &i "homs.ua"
Tan ← Homs "Tan"

IUtils ← &i "imageutils.ua"
OverlayImage ← IUtils "OverlayImageRGB"

Seqs ← &i "sequences.ua"
PowerSequence ← Seqs "PowerSequence"

UnOps ← &i "unaryops.ua"
AVig ← UnOps "AVig"
GVig ← UnOps "GVig"
HVig ← UnOps "HVig"

# ##### Settings
OutputImageSize ← 2160
GridModulus ← 480
ModSequence ← PowerSequence 2 4

RedFn ← ⁿ∶e
GreenFn ← |1 +1ₙ e
BlueFn ← |1 ₙ2

# ##### Definitions
FnGrid! ← ⊞^2.⇡           # Applies fn to each pair (x,y)
ModSeqReduce!! ← /^2≐◿⊙^1 # Second is to preprocess matrix

# ##### Main

# These should stay constant throughout generation
CGridFn ← |2 GMean
CReductionFn ← |2 HMean
CPreprocessFn ← |1 ÷ ∶⊙GVig ⍥GVig 2 ⍥HVig 3 .

# Construct Base Image
FnGrid!(◿GridModulus∘CGridFn) OutputImageSize # Set up grid
ModSequence                                   # Any integer sequence
ModSeqReduce!!(CReductionFn)(CPreprocessFn)   # Profit
&pf "Base image done\n"

# Colorize
∵Colorize!!!(RedFn)(GreenFn)(BlueFn)
&pf "Finished colorize\n"

# Apply Overlay?
# OverlayImage ∶ ⊟.⊂.Mandelbrot GridModulus

# &pf "Overlay done"

# Render
SaveImage $"./renders/outputpattern_.png" ⌊ now
&pf "Finished write\n"
