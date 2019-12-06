// Skye Leahy

struct Flavor {
  var name : String
  var rating : Int
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
  var flavor : Flavor
  var topping : String
  var size : Size
    
    func eat() {
      print("Mmm! I love eating \(self.flavor)")
    }
}


class IceCreamShop {
  var flavors : [Flavor]
  var sizes: [Size]
  var toppings: [String]
    
  init(flavors: [Flavor], sizes: [Size], toppings: [String]) {
      self.flavors = flavors
      self.sizes = sizes
      self.toppings = toppings
  }

}

var totalSales : Double = 0.00

func listTopFlavors(flavors: [Flavor]) {
    var string : String = "Our favorite flavors are "
    for flavor in flavors {
      if flavor.rating > 4 {
        string += "\(flavor.name) "
      }
    }
    print(string)
}

func orderCone(flavor: Flavor = Flavor(name: "Vanilla", rating: 1), topping: String = "Vanilla", size: Size = Size.large) -> Cone {
    let newCone = Cone(flavor: flavor, topping: topping, size: size)
    
    if let size = newCone.size as Double? {
        totalSales += size
    }

    if let topping = newCone.flavor as Flavor? {
      print("Your \(newCone.flavor) ice cream with \(topping) is \(newCone.size)")
    } else {
      print("Your \(newCone.flavor) ice cream is \(newCone.size)")
    }

    return newCone
}

var vanilla = Flavor(name: "Vanilla", rating: 3)
var chocolate = Flavor(name: "Chocolate", rating: 4)
var strawberry = Flavor(name: "Strawberry", rating: 5)

var arraySizes = [Size.small, Size.medium, Size.medium, Size.small, Size.large, Size.large, Size.small]
var arrayToppings = ["Cupcake", "Vanilla", "Chocolate", "Peanut Butter", "Mango Dragonfruit", "Cinnamon Dolce"]

let shop1 = IceCreamShop(flavors: [vanilla, chocolate, strawberry], sizes: arraySizes, toppings: arrayToppings)

listTopFlavors(flavors: shop1.flavors)

let cone1 = orderCone()

cone1.eat()
