// Skye Leahy

struct Flavor {
  var name : String
  var rating : Int
}

enum Size {
  case small : Double = 3.99
  case medium : Double = 4.99
  case large : Double = 5.99
}

struct Cone {
  let flavor : Flavor
  let topping : String
  let size : Size
}

func eat() {
  print("Mmm! I love eating \(Cone.flavor)")
}

class IceCreamShop() {
  var flavors : []
  var sizes: [Size]
  var toppings: [""]

  init(flavors: [], sizes: [Size], toppings: [""]) {
      self.flavors = flavors
      self.sizes = sizes
      self.toppings = toppings
  }

  var totalSales : Double

}

func listTopFlavors(flavors: [Flavor]) {
    var string : String = "Our favorite flavors are "
    for flavor in flavors {
      if flavor.rating > 4.0 {
        string += "\(flavor.name) "
      }
    }
    print(string)
}

func orderCone(flavor: Flavor = Flavor(name: "Vanilla", rating = 1.0), topping: String = "Vanilla", size: Size = Size.large) {
    let newCone = Cone(flavor: flavor, topping: topping, size: size)
    iceCreamShop.totalSales += newCone.size

    if let topping = newCone.flavor? {
      print("Your \(newCone.flavor) ice cream with \(topping) is \(newCone.size)")
    } else {
      print("Your \(newCone.flavor) ice cream is \(newCone.size)")
    }

    return newCone
}

var vanilla = Flavor(name: "Vanilla", rating: 3.0)
var chocolate = Flavor(name: "Chocolate", rating: 4.0)
var strawberry = Flavor(name: "Strawberry", rating: 5.0)

var arraySizes = [Size.small, Size.medium, Size.medium, Size.small, Size.large, Size.large, Size.small]
var arrayToppings = ["Cupcake", "Vanilla", "Chocolate", "Peanut Butter", "Mango Dragonfruit", "Cinnamon Dolce"]

let shop1 = IceCreamShop(flavors: [vanilla, chocolate, strawberry], sizes: arraySizes, toppings: arrayToppings)

listTopFlavors(flavors: shop1.flavors)

let cone1 = orderCone()

cone1.eat()