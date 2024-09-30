//
//  main.swift
//  dependency_injection
//
//  Created by Abdul Azis  Al Ayubbi on 30/09/24.
//

import Foundation

// Constructor Injection
/* Constructor injection is when dependencies are passed to class through its
 initializer. This is one of the most common and recommended forms of DI because
 its ensures that a class is always created in a valid state*/
//protocol CoffeSuplier {
//    func getCoffeBeans() -> String
//}
//class EthiopianSupplier: CoffeSuplier {
//    func getCoffeBeans() -> String {
//        return "Ethiopian Yirgacheffe Beans"
//    }
//}
//class JavaSupplier: CoffeSuplier {
//    func getCoffeBeans() -> String {
//        return "Java Indonesia Beans"
//    }
//}
//class CoffeShop {
//    private let coffeSuplier : CoffeSuplier
//    init(coffeSuplier: CoffeSuplier) {
//        self.coffeSuplier = coffeSuplier
//    }
//    func serveCoffe() {
//        print("Serving coffe made from \(coffeSuplier.getCoffeBeans())")
//    }
//}
//let supplier = JavaSupplier()
//let myCaffe = CoffeShop(coffeSuplier: supplier)
//print(myCaffe.serveCoffe())


// Property Injection
/*Property injection is when dependencies are assigned to class through its properties.
 This method is useful when dependencies aren't always available during the initialization of a class, but will be provided later
 */
//protocol CoffeSuplier {
//    func getCoffeBeans() -> String
//}
//class EthiopianSupplier: CoffeSuplier {
//    func getCoffeBeans() -> String {
//        return "Ethiopian Yirgacheffe Beans"
//    }
//}
//class CoffeShop {
//    var coffeSupplier : CoffeSuplier?
//    func serveCoffe() {
//        if let supplier = coffeSupplier {
//            print("Serving coffe made from \(supplier.getCoffeBeans())")
//        }else {
//            print("No coffe supplier available")
//        }
//    }
//}
//let myCafe = CoffeShop()
//myCafe.coffeSupplier = EthiopianSupplier()
//myCafe.serveCoffe()

/*
    Method Injection is when dependencies are provided through a method call.
 This is useful for cases where a dependency is only needed for specific method, and not for the entire lifecycle of the class
 
*/
protocol CoffeSuplier {
    func getCoffeBeans() -> String
}
class EthiopianSupplier: CoffeSuplier {
    func getCoffeBeans() -> String {
        return "Ethiopian Yirgacheffe Beans"
    }
}
class CoffeeShop {
    func serveCoffee(supplier: CoffeSuplier) {
        print("Serving coffee made from \(supplier.getCoffeBeans())")
    }
}

// Injecting dependency when calling the method
let supplier = EthiopianSupplier()
let myCafe = CoffeeShop()
myCafe.serveCoffee(supplier: supplier)
