GUtils ← &i "genericutils.ua"
  IgnoreSmall ← GUtils "IgnoreSmall"

# Convert simple grayscale to RGB grayscale
GSU ← ∵(⊂⊂..)

PRIVATETransparencyMaskGS ← ≑≃'=0IgnoreSmall
PRIVATETransparencyMaskRGB ← GSU≑≃'≍0_0_0IgnoreSmall

# Takes two RGB images and puts one on top
# of the other, treating black as transparent.
# 
# Usage: OverlayImage BgImage FgImage
OverlayImageGS ← ⬚0+⬚1×PRIVATETransparencyMaskGS,
OverlayImageRGB ← ⬚0+⬚1×PRIVATETransparencyMaskRGB,
