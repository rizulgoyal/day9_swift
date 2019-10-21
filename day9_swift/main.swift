//
//  main.swift
//  day9_swift
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")



do {
    let f1 : Faculty =  try Faculty(facultyID: 1, facultyName: "Rizul Goyal", salary: 1002.00)
   f1.PrintData()
    try f1.setName(newName: "Harpreet Singh")
    try f1.setSalary(newSalary: 1500)
    f1.PrintData()
    let f2 : Faculty =  try Faculty(facultyID: 2, facultyName: "Anmol Sharma", salary: 1602.00)
    f2.PrintData()

}
catch FacultyError.invalidFacultyID(let facultyID)
{
    print("Invalid Faculty ID : \(facultyID)")
}
catch FacultyError.invalidFacultyName(let facultyName)
{
    print("Invalid Faculty Name : \(facultyName)")

}
catch FacultyError.invalidSalary(let salary)
{
    print("Invalid Faculty Salary : \(salary)")
    
}


