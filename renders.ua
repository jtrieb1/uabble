GUtils ← &i "genericutils.ua"
  SaveImage ← GUtils "SaveImage"

Settings ← &i "config.ua"
  CNow ← Settings "CNow"

ToFile ← |1.0 &pf "Finished write\n" SaveImage $"./renders/outputpattern_.png" CNow
Show ← |1.0 &ims
