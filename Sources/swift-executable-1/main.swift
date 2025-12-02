// Exercise Code (EXAM SCORE CHECKER)

//Decide the minimum score for the students to pass
let scoreMinimum: Double = 70

var submitYourScore: String = ("\u{001B}[33mPlease submit your score! \u{001B}[0m") 

let enterYourScoreAgain: String = ("\u{001B}[33mPlease submit ONLY your score! \u{001B}[0m") 

var inputValid: Bool = false 
while !inputValid {
    
    print (submitYourScore)

    let inputText: String = readLine()! //Command to reply message on the terminal

    if let scoreExam: Double = Double(inputText) { 
    
        inputValid = true
        
        let passed: String = "Congratulations, You passed the exam!"
        let failed: String = "You do not passed the exam."

        if scoreExam >= scoreMinimum {
            print("\u{001B}[32m\(passed) \u{001B}[0m") // Green text color code 32m

        } else {
            print("\u{001B}[31m\(failed) \u{001B}[0m") // Red text color code 31m
        }
        
    } else {
        // If the score on terminal submitted as characters or words (String)
        submitYourScore = enterYourScoreAgain //Yellow text color code 33m
    }
}

