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
        print("Mmm! I love eating \(self.flavor.name)")
    }
}


class IceCreamShop {
  var flavors : [Flavor]
  var sizes: [Size]
  var toppings: [String]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double = 0.00) {
      self.flavors = flavors
      self.sizes = sizes
      self.toppings = toppings
        self.totalSales = totalSales
  }
    
    func orderCone(flavor: Flavor = Flavor(name: "Vanilla", rating: 1), topping: String = "Vanilla", size: Size = Size.large) -> Cone {
        let newCone = Cone(flavor: flavor, topping: topping, size: size)

        self.totalSales += size.rawValue
        
        print(self.totalSales)

        if let topping = newCone.flavor as Flavor? {
            print("Your \(newCone.flavor.name) ice cream with \(topping.name) is \(newCone.size)")
        } else {
            print("Your \(newCone.flavor.name) ice cream is \(newCone.size)")
        }

        return newCone
    }
    

}


func listTopFlavors(flavors: [Flavor]) {
    var string : String = "Our favorite flavors are "
    for flavor in flavors {
      if flavor.rating > 4 {
        string += "\(flavor.name) "
      }
    }
    print(string)
}



var vanilla = Flavor(name: "Vanilla", rating: 3)
var chocolate = Flavor(name: "Chocolate", rating: 4)
var strawberry = Flavor(name: "Strawberry", rating: 5)

var arraySizes = [Size.small, Size.medium, Size.medium, Size.small, Size.large, Size.large, Size.small]
var arrayToppings = ["Cupcake", "Vanilla", "Chocolate", "Peanut Butter", "Mango Dragonfruit", "Cinnamon Dolce"]

let shop1 = IceCreamShop(flavors: [vanilla, chocolate, strawberry], sizes: arraySizes, toppings: arrayToppings)

listTopFlavors(flavors: shop1.flavors)

let cone1 = shop1.orderCone()

cone1.eat()
