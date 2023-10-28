Settings ← &i "config.ua"
  CNow ← Settings "CNow"
  UseSnapshots ← Settings "UseSnapshots"

GUtils ← &i "genericutils.ua"
  SaveImage ← GUtils "SaveImage"

# Expects image, nothing else
TakeSnapshot ← ?(SaveImage $"./renders/outputpattern_.partial._.png" CNow now.)(∘)UseSnapshots
