// EXAM SCORE CHECKER

//Decide the minimum score for the students to pass
let scoreMinimum: Int = 70

//Make names for the user
var myName: String = ""

var isNameValid: Bool = false

print ("\u{001B}[33mPlease enter your full name! \u{001B}[0m")

while !isNameValid{
    let inputTempName: String = readLine()!
    if inputTempName.contains(where: { $0.isNumber }) {
    print ("\u{001B}[31mInvalid Names. Please enter ONLY your real name! \u{001B}[0m")
    } else if inputTempName.isEmpty{
        print("\u{001B}[31mName cannot be empty.\u{001B}[0m")
        } else {
        myName = inputTempName
        isNameValid = true
        }
}

//Enter Subjects for user
let mySubjects: [String: String] = [
    "1": "English",
    "2": "History",
    "3": "Science",
    "4": "Social"
]

let menuSubjects: String = """

1. English
2. History
3. Science
4. Social
"""

//Choosing Subjects for users
var subjectSubmitted: String = "" 

print ("\u{001B}[33mChoose your subjects! (Enter Number) \u{001B}[0m")

var inputSubjects: Bool = false
while !inputSubjects{
    print (menuSubjects)
    let inputNumber: String = readLine()!

    if let subjectFound = mySubjects[inputNumber]{
        subjectSubmitted = subjectFound
        inputSubjects = true
    } else {
        print ("\u{001B}[31mSubject not found. Please choose 1-4. \u{001B}[0m")
    }

}


//Submit Score
var submitYourScore: String = ("\u{001B}[33mPlease submit your score! \u{001B}[0m") 
let enterYourScoreAgain: String = ("\u{001B}[33mPlease submit ONLY your score! \u{001B}[0m") 


var inputValid: Bool = false 
while !inputValid {
    
    print (submitYourScore)
    let inputText: String = readLine()! 

    if let scoreExam: Int = Int(inputText) { 
    
        if scoreExam > 100 {
                print ("\u{001B}[31mYour score cannot exceed more than 100! Check your scores again! \u{001B}[0m")
                } else if scoreExam < 0 {
                print("\u{001B}[31mYour score cannot be less than 0! \u{001B}[0m")
                } else {
                inputValid = true
                let passed: String = "Congratulations, \(myName)! You passed the \(subjectSubmitted) exam!"
                let failed: String = "Unfortunately, You do not passed the \(subjectSubmitted) exam, \(myName)."
                
                if scoreExam >= scoreMinimum {
                print("\u{001B}[32m\(passed) \u{001B}[0m") 
                } else {
                    print("\u{001B}[31m\(failed) \u{001B}[0m") 
                    } 
                } 
        } else {
    submitYourScore = enterYourScoreAgain 
        }
}


