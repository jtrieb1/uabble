# ##### Imports
Settings ← &i "config.ua"
  GeneratedImageSize ← Settings "GeneratedImageSize"
SnapshotTools ← &i "snapshot.ua"
  TakeSnapshot ← SnapshotTools "TakeSnapshot"

# Stages
BaseStages ← &i "baseimage.ua"
  InitStage ← BaseStages "BaseImageStage"
ColorStages ← &i "color.ua"
  ColorizeStage ← ColorStages "ColorizeStage"

Filters ← &i "filters.ua"
  SubtleFilter ← Filters "SubtleDarkenM"

RenderStages ← &i "renders.ua"
  ToFile ← RenderStages "ToFile"
  Show ← RenderStages "Show"

RenderPipeline ← (
  InitStage GeneratedImageSize
  SubtleFilter
  TakeSnapshot
  ColorizeStage
  ⊃ToFile Show
)

RenderPipeline
