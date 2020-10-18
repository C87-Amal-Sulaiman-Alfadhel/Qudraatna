//
//  File.swift
//  Qudraatna
//
//  Created by Amal Alfadhel on 10/16/20.
//

import Foundation

struct Subject {
    var subjectName : String
    var subjectStudentNotes : String
    var subjectKuwaitUniNotes : String
    var subjectTest : String
    var subjectVirtualQuiz : String
}

struct Quiz {
    var question1 : String
    var q1Choice1 : String
    var q1Choice2 : String
    var q1Choice3 : String
    var q1Choice4 : String
    
    var question2 : String
    var q2Choice1 : String
    var q2Choice2 : String
    var q2Choice3 : String
    var q2Choice4 : String
    
    var question3 : String
    var q3Choice1 : String
    var q3Choice2 : String
    var q3Choice3 : String
    var q3Choice4 : String
    
    var question4 : String
    var q4Choice1 : String
    var q4Choice2 : String
    var q4Choice3 : String
    var q4Choice4 : String
    
    var question5 : String
    var q5Choice1 : String
    var q5Choice2 : String
    var q5Choice3 : String
    var q5Choice4 : String
}

var mathArray = [
    Subject(subjectName: "Math", subjectStudentNotes: "Math Student Notes", subjectKuwaitUniNotes: "Math KU Notes", subjectTest: "Math Tests", subjectVirtualQuiz: "Math Virtual Quiz")
]

var ChemistryArray = [
    Subject(subjectName: "Chemistry", subjectStudentNotes: "Chemistry Student Notes", subjectKuwaitUniNotes: "Chemistry KU Notes", subjectTest: "Chemistry Tests", subjectVirtualQuiz: "Chemistry Virtual Quiz")
]
