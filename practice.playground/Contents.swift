import UIKit

var greeting = "Hello, playground"

//class SmartDevices{
//    var name: String
//    
//    init(name: String){
//        self.name = name
//    }
//}
//
//class SmartLight: SmartDevices{
//    func lightsOn(){
//        print("\(name) is on")
//    }
//}
//
//class SmartThermostat: SmartDevices{
//    func setTemperature(_ temperature: Int){
//        print("\(name) is set to \(temperature)")
//    }
//}
//
//func whichDevice(device: SmartDevices){
//    if let light = device as? SmartLight{
//        light.lightsOn()
//        
//    }else if let thermostat = device as? SmartThermostat{
//        thermostat.setTemperature(25)
//    }
//}
//
//let Devices: [SmartDevices] = [SmartLight(name:"room light"), SmartThermostat(name:"room thermostat")]
//
//for d in Devices{
//    whichDevice(device: d)
//}


enum Role{
    case admin, guest, student
}


class User{
    var uname: String
    var role: Role
    var email: String?
    
    init(uname: String, role: Role, email: String?){
        self.uname = uname
        self.email = email
        self.role = role
    }
}

func welcomeUser(_ user: User) -> String?{
    var greeting: String
    switch user.role{
    case .admin:
        greeting = "Hello Admin"
    case .student:
        greeting = "Hello student"
    case .guest:
        greeting = "Hello guest"
    
    }
    
    if let email = user.email{
        greeting+="your email \(email)"
    }
    
    return greeting
}


let user1 = User(uname: "Karan", role: .admin, email: "ks227626")
let user2 = User(uname: "ABC", role: .student, email: nil)

if let msg1 = welcomeUser(user1){
    print(msg1)
}

if let msg1 = welcomeUser(user1){
    print(msg1)
}

if let msg2 = welcomeUser(user2){
    print(msg2)
}

var str1 = "SwiftLangLuage"
var str2 = " is a powerful "
str1.insert(contentsOf: str2, at: str1.lastIndex(of: "L")!)
print(str1)


