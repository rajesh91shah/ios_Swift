//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print("type casting with multiple inharitance")

class Organization {
    let organizationName: String
    init(organizationName: String) {
        self.organizationName = organizationName
    }
}

class School: Organization {
    let schoolName: String
    init(schoolName: String, organizationName: String ) {
        self.schoolName = schoolName
        super.init(organizationName: organizationName)
    }
}

class Teacher: School{
    let name: String
    init(name: String, schoolName: String, organizationName: String) {
        self.name = name
        super.init(schoolName: schoolName, organizationName: organizationName)
    }
}

class Student: Teacher {
    let nameStuden: String
    init(name: String, teacherName: String, organization: String, schoolName: String) {
        self.nameStuden = name
        super.init(name: teacherName, schoolName: schoolName, organizationName: organization)
        
    }
}

let ram = Student(name: "Ram", teacherName: "Patil", organization: "ICA Mandal", schoolName: "K M K school")

let schoolName = School(schoolName: "DY Patil", organizationName: "chanaky manadal")


schoolName.schoolName
let upgared = schoolName as? Student
upgared?.nameStuden



if ram is Student {
    let school = ram.organizationName
    ram.nameStuden
    print("ram is student ")
    let school1 = ram as School
    
    let organization = ram as Organization
    organization.organizationName
    
}



