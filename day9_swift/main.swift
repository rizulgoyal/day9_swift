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


