import Foundation

struct Location {
    var x: Double
    var y: Double
}

let storeRange: Double = 2.5

let store1 = Location(x: 1.0, y: 2.0)
let store2 = Location(x: 3.0, y: 4.0)

struct Customer {
    var name: String
    var email: String
    var phoneNumber: String
    var acceptedNewsletter: Bool
    var location: Location
}

let customers: [Customer] = [
    Customer(name: "Jane Doe", email: "janedoe@example.com", phoneNumber: "1234567890", acceptedNewsletter: true, location: Location(x: 0.5, y: 1.5)),
    Customer(name: "John Smith", email: "john.smith123@example.com", phoneNumber: "9876543210", acceptedNewsletter: false, location: Location(x: 2.0, y: 3.0)),
    Customer(name: "Alice Johnson", email: "alice.johnson@example.com", phoneNumber: "5551234567", acceptedNewsletter: true, location: Location(x: 3.5, y: 4.5)),
    Customer(name: "Bob Brown", email: "bbrown82@example.com", phoneNumber: "5559876543", acceptedNewsletter: true, location: Location(x: 1.0, y: 5.0)),
    Customer(name: "Eve Wilson", email: "wilson.eve@example.com", phoneNumber: "5555555555", acceptedNewsletter: false, location: Location(x: 4.0, y: 2.0)),
    Customer(name: "Michael Lee", email: "mike.lee@example.com", phoneNumber: "5552223333", acceptedNewsletter: true, location: Location(x: 2.5, y: 3.5)),
    Customer(name: "Sarah Clark", email: "sarahc@example.com", phoneNumber: "5556667777", acceptedNewsletter: true, location: Location(x: 4.5, y: 1.0)),
    Customer(name: "David Garcia", email: "david.garcia@example.com", phoneNumber: "5558889999", acceptedNewsletter: false, location: Location(x: 1.5, y: 2.5)),
    Customer(name: "Emily White", email: "emilywhite22@example.com", phoneNumber: "5554445555", acceptedNewsletter: true, location: Location(x: 3.0, y: 1.0)),
    Customer(name: "James Anderson", email: "j.anderson@example.com", phoneNumber: "5557778888", acceptedNewsletter: true, location: Location(x: 5.0, y: 4.0))
]

func printCustomersWithinRange(storeLocation: Location, customers: [Customer]) {
    for customer in customers {
        let distance = sqrt(pow(customer.location.x - storeLocation.x, 2) + pow(customer.location.y - storeLocation.y, 2))
        if distance <= storeRange {
            print("Name: \(customer.name) Email: \(customer.email)")
        }
    }
}

// Test the function with store1
print("Customers within range of Store 1:")
printCustomersWithinRange(storeLocation: store1, customers: customers)

// Test the function with store2
print("\nCustomers within range of Store 2:")
printCustomersWithinRange(storeLocation: store2, customers: customers)
