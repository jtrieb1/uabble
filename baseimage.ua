GUtils ← &i "genericutils.ua"
  SaveImage ← GUtils "SaveImage"

SnapshotTools ← &i "snapshot.ua"
  TakeSnapshot ← SnapshotTools "TakeSnapshot"

Settings ← &i "config.ua"
  CNow ← Settings "CNow"
  GridModulus ← Settings "GridModulus"
  GridReducer ← Settings "GridReducer"

ModSequence ← Settings "ModSequence"
ModReducer ← Settings "ModReducer"
ModSeqReduce!! ← Settings "ModSeqReduce!!"

Preprocessor ← Settings "Preprocessor"

FnGrid! ← ⊞^2.⇡ # Applies fn to each pair (x,y) in square matrix of given size
# Convert to color space via lerp between min/max
ColorMap ← ∺(×⊃(⊙;⊢⇌)(-⊢))⊂⊙(÷∶1-).⊃(/↧)(/↥)♭.

InitialGrid ← |1 FnGrid!(◿ GridModulus ∘ GridReducer)
SeqReducer ← |1 ModSeqReduce!!(ModReducer)(Preprocessor) ModSequence
Normalize = |1 ColorMap
GridCheckpoint ← |1 TakeSnapshot &pf "Base image done\n"

BaseImageStage ← |1 GridCheckpoint Normalize SeqReducer InitialGrid
