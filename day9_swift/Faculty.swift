//
//  Faculty.swift
//  day9_swift
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

enum FacultyError:Error
{
    
    case invalidFacultyID(facultyID: Int)
    case invalidFacultyName(facultyName: String)
    case invalidSalary(salary: Double)
    
}

class Faculty
{
    var facultyID : Int
    var facultyName: String
    var salary: Double
    
    init(facultyID: Int,facultyName:String,salary:Double) throws {
        if facultyID<=0
        {
            throw FacultyError.invalidFacultyID(facultyID: facultyID)
        }
        self.facultyID=facultyID
        if facultyName.count <= 10
        {
            throw FacultyError.invalidFacultyName(facultyName: facultyName)
        }
        self.facultyName=facultyName
        if salary <= 1000
        {
            throw FacultyError.invalidSalary(salary: salary)
        }
        self.salary=salary
        
        
    }
    
    func setSalary(newSalary : Double) throws
    {
        if newSalary <= 1000
        {
            throw FacultyError.invalidSalary(salary: newSalary)
        }
        self.salary=newSalary
        
    }
    
    func setName(newName: String) throws
    {
        print("******  START ******")
        do{
            if newName.count < 10
            {
                throw FacultyError.invalidFacultyName(facultyName: newName)

            }
            self.facultyName=newName
            print("Set Name ")

        }
        catch FacultyError.invalidFacultyName(let facultyName)
        {
            print("Invalid Faculty Name : \(facultyName)")

        }
        catch{
            print(error.localizedDescription)
        }
        print("***** END ******")
    }
    
    
    func PrintData()
    {
        print("Faculty ID : \(facultyID)")
        print("Faculty Name : \(facultyName)")
        print("Faculty Salary : \(salary)")
        
        
    }
    
}
