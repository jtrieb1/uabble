#GUtils ← &i "genericutils.ua"
#SaveImage ← GUtils "SaveImage"
#IUtils ← &i "imageutils.ua"
#GSU ← IUtils "GSU"

#PRIVATEZ ← ⊟/- ⁿ2 ∶×2 /×.⇌
#MandelbrotGenerate ← GSU<2 √/+ ⁿ2;∶⍥(+PRIVATEZ⊙.)20 ↯∶0△.⇌⍘⍉⊞⊟.×4 ÷∶-÷2,⇡.

#Mandelbrot ← ?(&imd "png" &frab)(SaveImage ⊙'.MandelbrotGenerate) &fe .$"./renders/Mandelbrot_.png".
