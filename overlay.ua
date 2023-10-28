IUtils ← &i "imageutils.ua"
  OverlayImage ← IUtils "OverlayImageRGB"

Overlay ← Settings "Overlay"

OverlayStage ← |1 ?(&pf"Overlay done"∘OverlayImage∶Overlay)∘ /↥≠0♭ Overlay
