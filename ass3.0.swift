//Problem 1
for number in 1...100 {
    if number % 3 == 0 && number % 5 == 0 {
        print("FizzBuzz")
    } else if number % 3 == 0 {
        print("Fizz")
    } else if number % 5 == 0 {
        print("Buzz")
    } else {
        print(number)
    }
}
//Problem 2
func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

// Main program to print prime numbers between 1 and 100
for number in 1...100 {
    if isPrime(number) {
        print(number)
    }
}

// problem 3
func celsiusToFahrenheitAndKelvin(_ celsius: Double) {
    let fahrenheit = (celsius * 9/5) + 32
    let kelvin = celsius + 273.15
    print("Temperature in Fahrenheit: \(fahrenheit) °F")
    print("Temperature in Kelvin: \(kelvin) K")
}

func fahrenheitToCelsiusAndKelvin(_ fahrenheit: Double) {
    let celsius = (fahrenheit - 32) * 5/9
    let kelvin = celsius + 273.15
    print("Temperature in Celsius: \(celsius) °C")
    print("Temperature in Kelvin: \(kelvin) K")
}

func kelvinToCelsiusAndFahrenheit(_ kelvin: Double) {
    let celsius = kelvin - 273.15
    let fahrenheit = (celsius * 9/5) + 32
    print("Temperature in Celsius: \(celsius) °C")
    print("Temperature in Fahrenheit: \(fahrenheit) °F")
}

// Main program
print("Enter the temperature value:")
if let input = readLine(), let temperature = Double(input) {
    print("Enter the unit of temperature (C for Celsius, F for Fahrenheit, K for Kelvin):")
    if let unit = readLine()?.uppercased() {
        switch unit {
        case "C":
            celsiusToFahrenheitAndKelvin(temperature)
        case "F":
            fahrenheitToCelsiusAndKelvin(temperature)
        case "K":
            kelvinToCelsiusAndFahrenheit(temperature)
        default:
            print("Invalid unit entered.")
        }
    } else {
        print("Invalid unit input.")
    }
} else {
    print("Invalid temperature input.")
}

//problem 4
func displayMenu() {
    print("\nShopping List Application")
    print("1. Add Item")
    print("2. Remove Item")
    print("3. View Shopping List")
    print("4. Exit")
    print("Please select an option (1-4):")
}

var shoppingList = [String]()
var isRunning = true

while isRunning {
    displayMenu()
    if let input = readLine(), let option = Int(input) {
        switch option {
        case 1:
            print("Enter the item to add:")
            if let item = readLine() {
                shoppingList.append(item)
                print("'\(item)' has been added to the shopping list.")
            }
        case 2:
            print("Enter the item to remove:")
            if let item = readLine() {
                if let index = shoppingList.firstIndex(of: item) {
                    shoppingList.remove(at: index)
                    print("'\(item)' has been removed from the shopping list.")
                } else {
                    print("Item not found in the shopping list.")
                }
            }
        case 3:
            print("Current Shopping List:")
            if shoppingList.isEmpty {
                print("The shopping list is empty.")
            } else {
                for (index, item) in shoppingList.enumerated() {
                    print("\(index + 1). \(item)")
                }
            }
        case 4:
            print("Exiting the application. Goodbye!")
            isRunning = false
        default:
            print("Invalid option. Please choose a number between 1 and 4.")
        }
    } else {
        print("Invalid input. Please enter a number.")
    }
    
    // problem 5
    
func countWordFrequency(in sentence: String) -> [String: Int] {
    var wordFrequency = [String: Int]()
    let words = sentence
        .lowercased()
        .components(separatedBy: .whitespacesAndNewlines)
        .map { $0.trimmingCharacters(in: .punctuationCharacters) }
    
    for word in words {
        if !word.isEmpty {
            wordFrequency[word, default: 0] += 1
        }
    }
    
    return wordFrequency
}

print("Enter a sentence:")
if let input = readLine() {
    let frequency = countWordFrequency(in: input)
    print("Word Frequencies:")
    for (word, count) in frequency {
        print("\(word): \(count)")
    }
}

// problem 6
func fibonacci(_ n: Int) -> [Int] {
    guard n > 0 else { return [] }
    var sequence = [0, 1]
    for i in 2..<n {
        let nextNumber = sequence[i - 1] + sequence[i - 2]
        sequence.append(nextNumber)
    }
    return Array(sequence.prefix(n))
}

print("Enter a number:")
if let input = readLine(), let n = Int(input) {
    let fibSequence = fibonacci(n)
    print("Fibonacci sequence: \(fibSequence)")
}
// problem 7
func processStudentScores() {
    var studentScores = [String: Int]()
    var totalScore = 0
    var numberOfStudents = 0
    
    print("Enter student names and their scores (type 'done' when finished):")
    
    while true {
        print("Enter student name:")
        guard let name = readLine(), name.lowercased() != "done" else { break }
        
        print("Enter score for \(name):")
        if let scoreInput = readLine(), let score = Int(scoreInput) {
            studentScores[name] = score
            totalScore += score
            numberOfStudents += 1
        } else {
            print("Invalid score. Please enter an integer.")
        }
    }
    
    guard numberOfStudents > 0 else {
        print("No scores entered.")
        return
    }
    
    let averageScore = totalScore / numberOfStudents
    var highestScore = Int.min
    var lowestScore = Int.max
    
    for score in studentScores.values {
        if score > highestScore { highestScore = score }
        if score < lowestScore { lowestScore = score }
    }
    
    print("\nStudent Scores:")
    for (name, score) in studentScores {
        let status = score >= averageScore ? "above" : "below"
        print("\(name): \(score) - \(status) average")
    }
    
    print("\nAverage Score: \(averageScore)")
    print("Highest Score: \(highestScore)")
    print("Lowest Score: \(lowestScore)")
}

processStudentScores()

//problem 8

func isPalindrome(_ text: String) -> Bool {
    let cleanedText = text
        .filter { $0.isLetter } 
        .lowercased() 

    return cleanedText == String(cleanedText.reversed())
}
print("write word to check palindrome")
if let input = readLine() {
    print("Is it palindrome? \(isPalindrome(input))")
    
} else {
    print("Недопустимый ввод.")
}


// problem 9

func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double? {
    guard b != 0 else {
        print("Error: Division by zero is not allowed.")
        return nil
    }
    return a / b
}

func calculator() {
    var shouldContinue = true

    while shouldContinue {
        print("Enter first number:")
        guard let firstInput = readLine(), let firstNumber = Double(firstInput) else {
            print("Invalid input. Please enter a valid number.")
            continue
        }

        print("Enter second number:")
        guard let secondInput = readLine(), let secondNumber = Double(secondInput) else {
            print("Invalid input. Please enter a valid number.")
            continue
        }

        print("Choose an operation (+, -, *, /):")
        guard let operation = readLine() else {
            print("Invalid operation. Please try again.")
            continue
        }

        var result: Double?

        switch operation {
        case "+":
            result = add(firstNumber, secondNumber)
        case "-":
            result = subtract(firstNumber, secondNumber)
        case "*":
            result = multiply(firstNumber, secondNumber)
        case "/":
            result = divide(firstNumber, secondNumber)
        default:
            print("Invalid operation. Please choose +, -, *, or /.")
            continue
        }

        if let result = result {
            print("Result: \(result)")
        }

        print("Do you want to perform another calculation? (yes/no)")
        let continueInput = readLine()?.lowercased()
        shouldContinue = continueInput == "yes"
    }
}

calculator()

// problem 10

import Foundation

func hasUniqueCharacters(_ text: String) -> Bool {
    var characterSet = Set<Character>()

    for character in text {
        if characterSet.contains(character) {
            return false
        }
        characterSet.insert(character)
    }
    
    return true
}

func checkUniqueCharacters() {
    print("Enter a string to check if it has all unique characters:")
    
    if let input = readLine() {
        let result = hasUniqueCharacters(input)
        print("Does the input have all unique characters? \(result)")
    } else {
        print("Invalid input.")
    }
}

checkUniqueCharacters()
