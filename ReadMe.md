# CoolColourLibrary

This library extends UIColor for UIKit and Color for SwiftUI by adding flat colours and colour darken/lightnen functionality.

To darken a any colour use the `darken(percent p: CGFloat)` or to make a colour ligher, use the `darken(percent p: CGFloat)` . For both functions enter decimal value, such as 0.5 for to darken or lighten by 50%.
Two constructors are availble in the library for setting a colour by hex value. You can either pass in the actual hex value
`var skyColour = UIColor(0x3599db)`

or a string
`var skyColour = UIColor("3599db")`
 A hash in the string is optional `var skyColour = UIColour("#3599db")` .
 
 The same type of constructions are availble for SwiftUI and would look like this
 `var skyColour = Color(0x3599db)`
 `var skyColour = Color(0x3599db)`
 
 There is also a `ContrastColorOf` function. It takes in a colour and a bool for whether or not a colour is flat or not.
 
Below are a list of flat colours with the colour function next to it.
- ![#3599db](https://placehold.co/15x15/3599db/3599db.png) `flatSkyBlue()`
- ![#1abc9c](https://placehold.co/15x15/1abc9c/1abc9c.png) `flatTurquoise()`
- ![#16a085](https://placehold.co/15x15/16a085/16a085.png) `flatGreenSea()`
- ![#2ecc71](https://placehold.co/15x15/2ecc71/2ecc71.png) `flatEmerald()`
- ![#27ae60](https://placehold.co/15x15/27ae60/27ae60.png) `flatNephritis()`
- ![#3498db](https://placehold.co/15x15/3498db/3498db.png) `flatPeterRiver()`
- ![#2980b9](https://placehold.co/15x15/2980b9/2980b9.png) `flatBelizeHole()`
- ![#9b59b6](https://placehold.co/15x15/9b59b6/9b59b6.png) `flatAmethyst()`
- ![#8e44ad](https://placehold.co/15x15/8e44ad/8e44ad.png) `flatWisteria()`
- ![#34495e](https://placehold.co/15x15/34495e/34495e.png) `flatWetAsphalt()`
- ![#2c3e50](https://placehold.co/15x15/2c3e50/2c3e50.png) `flatMidnightBlue()`
- ![#f1c40f](https://placehold.co/15x15/f1c40f/f1c40f.png) `flatSunFlower()`
- ![#f39c12](https://placehold.co/15x15/f39c12/f39c12.png) `flatOrange()`
- ![#e67e22](https://placehold.co/15x15/e67e22/e67e22.png) `flatCarrot()`
- ![#d35400](https://placehold.co/15x15/d35400/d35400.png) `flatPumpkin()`
- ![#e74c3c](https://placehold.co/15x15/e74c3c/e74c3c.png) `flatAlizarin()`
- ![#c0392b](https://placehold.co/15x15/c0392b/c0392b.png) `flatPomegranate()`
- ![#ecf0f1](https://placehold.co/15x15/ecf0f1/ecf0f1.png) `flatClouds()`
- ![#bdc3c7](https://placehold.co/15x15/bdc3c7/bdc3c7.png) `flatSilver()`
- ![#95a5a6](https://placehold.co/15x15/95a5a6/95a5a6.png) `flatConcrete()`
- ![#7f8c8d](https://placehold.co/15x15/7f8c8d/7f8c8d.png) `flatAsbestos()`
