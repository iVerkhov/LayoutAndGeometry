* Layout and geometry: Introduction
* How layout works in SwiftUI
* Alignment and alignment guides
* How to create a custom alignment guide
* Absolute positioning for SwiftUI views
* Resizing images to fit the screen using GeometryReader
* Understanding frames and coordinates inside GeometryReader
* ScrollView effects using GeometryReader
* ScrollView effects using visualEffect() and scrollTargetBehavior()

**CHALLENGE**

1. _Make views near the top of the scroll view fade out to 0 opacity – I would suggest starting at about 200 points from the top._
1. _Make views adjust their scale depending on their vertical position, with views near the bottom being large and views near the top being small. I would suggest going no smaller than 50% of the regular size._
1. _For a real challenge make the views change color as you scroll. For the best effect, you should create colors using the Color(hue:saturation:brightness:) initializer, feeding in varying values for the hue._

Each of those will require a little trial and error from you to find values that work well. Regardless, you should use max() to handle the scaling so that views don’t go smaller than half their size, and use min() with the hue so that hue values don’t go beyond 1.0.
