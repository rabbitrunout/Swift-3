import UIKit

/*
 Due Date: Monday, December 2nd, 2024 (before class begins)

 Details:
    1- Create base class Computer with common properties and methods.
    2- Subclasses Laptop, Desktop, and Server that inherit from Computer and add unique properties and methods.
    3- A function to display detailed specifications of each computer type.
    4- Create the Base Class (Computer).
        Add the following properties:
            * brand: String
            * processor: String
            * ram: Int (amount of RAM in GB)
        Create an initializer for these properties.
        Add a method displaySpecs() that prints the values of these properties.
    5- Create Subclasses:
        - Laptop:
            Add an additional property isTouchscreen (a Bool to indicate if the laptop has a touchscreen).
            Override the displaySpecs() method to include this property.
        - Desktop:
            Add an additional property hasDedicatedGPU (a Bool to indicate if the desktop has a dedicated GPU).
            Override the displaySpecs() method to include this property.
        - Server:
            Add an additional property rackUnits (an Int to specify the server's size in rack units).
            Override the displaySpecs() method to include this property.
    6- Write some test code:
        Create one object for each subclass (Laptop, Desktop, and Server).
        Assign appropriate values to their properties.
        Call the displaySpecs() method for each object to print their specifications.
 
 ///////Sample Output:///////
 Laptop Specs:
 Brand: Apple, Processor: M1, RAM: 16GB
 Touchscreen: No

 Desktop Specs:
 Brand: Dell, Processor: Intel i7, RAM: 32GB
 Dedicated GPU: Yes

 Server Specs:
 Brand: HP, Processor: Xeon, RAM: 64GB
 Rack Units: 4
 //////////////////////////////////
 
 */

// 1 STEP: Create base class Computer with common properties and methods.
// 4 STEP: Create the Base Class (Computer): Add the following properties (brand: String, processor: String, ram: Int (amount of RAM in GB)). Create an initializer for these properties. Add a method displaySpecs() that prints the values of these properties.


// Computer Class:>>>
class Computer {
    private var brand: String
    private var processor: String
    private var ram: Int

    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
    
    // getters:
    func displaySpecs() {
        print(" \n Brand: \(self.brand), Processor:\(self.processor) GB,  RAM: \(self.ram) ")
    }
    func getBrand() -> String {
        return self.brand
    }
    func getProcessor() -> String {
        return self.processor
    }
    func getRam() -> Int {
        return self.ram
    }
}


// 2 STEP: Subclasses Laptop, Desktop, and Server that inherit from Computer and add unique properties and methods.

// 3 STEP: A function to display detailed specifications of each computer type.

// 5 STEP: Create Subclasses:
// Subclasses Laptop: Add an additional property isTouchscreen (a Bool to indicate if the laptop has a touchscreen).Override the displaySpecs() method to include this property.

//Subclasses Laptop:>>>
class Laptop: Computer {
    private var isTouchscreen: Bool
    
    init(brand: String, processor: String, ram: Int, isTouchscreen: Bool) {
        self.isTouchscreen = isTouchscreen
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    // getters:
    override func displaySpecs() {
        
        print("\n Laptop Specs: \n Brand: \(super.getBrand()), Processor:\(super.getProcessor()),  RAM: \(super.getRam())GB \n Touchscreen: \(self.isTouchscreen ? "Yes" : "No")")
    }
    
}


// Subclasses Desktop: Add an additional property hasDedicatedGPU (a Bool to indicate if the desktop has a dedicated GPU).Override the displaySpecs() method to include this property.

// Subclasses Desktop:>>>
class Desctop: Computer {
    private var hasDedicatedGPU: Bool
    
        init(brand: String, processor: String, ram: Int, hasDedicatedGPU: Bool) {
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    //getters:
    override func displaySpecs() {
        print("\n Desktop Specs: \n Brand: \(super.getBrand()), Processor:\(super.getProcessor()),  RAM: \(super.getRam())GB \n Dedicated: \(hasDedicatedGPU ? "Yes" : "No")")
    }
    
}


// Subclasses Server: Add an additional property rackUnits (an Int to specify the server's size in rack units).Override the displaySpecs() method to include this property.

// Subclasses Server:>>>
class Server: Computer {
    private var rackUnits: Int
    
    init(brand: String, processor: String, ram: Int, rackUnits: Int) {
        self.rackUnits = rackUnits
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    // getters:
    override func displaySpecs() {
        print("\n Server Specs: \n Brand: \(super.getBrand()), Processor:\(super.getProcessor()),  RAM: \(super.getRam())GB \n Rack Units: \(self.rackUnits)")
    }
}


// 6 STEP: Write some test code: Create one object for each subclass (Laptop, Desktop, and Server). Assign appropriate values to their properties. Call the displaySpecs() method for each object to print their specifications.


var machine1: Laptop = Laptop(brand: "Apple", processor: "M1", ram: 16, isTouchscreen: false)
machine1.displaySpecs()


var machine2: Desctop = Desctop (brand: "DeLL", processor: "Intel i7", ram: 32, hasDedicatedGPU: true)
machine2.displaySpecs()


var machine3: Server = Server (brand: "HP", processor: "Xeon", ram: 64, rackUnits: 4)
machine3.displaySpecs()







