// Easy 1
let fruits = ["Apple", "Banana", "Cherry", "Date", "Elderberry"]
print(fruits[2]) 

// EASY 2
var favoriteNumbers: Set = [3, 7, 9]
favoriteNumbers.insert(11)
print(favoriteNumbers) 

// EASY 3
let languages = ["Swift": 2014, "Python": 1991, "Java": 1995]
print(languages["Swift"]!)

// EASY 4
var colors = ["Red", "Green", "Blue", "Yellow"]
colors[1] = "Purple"
print(colors) 

// Medium 1
let set1: Set = [1, 2, 3, 4]
let set2: Set = [3, 4, 5, 6]
let intersection = set1.intersection(set2)
print(intersection) 

// Medium 2
var studentScores = ["Dimash": 85, "Arthur": 90, "Alibek": 88]
studentScores["Dimash"] = 95
print(studentScores) 

// Medium 3
let array1 = ["apple", "banana"]
let array2 = ["cherry", "date"]
let mergedArray = array1 + array2
print(mergedArray)

//Hard 1
var countries = ["USA": 331_000_000, "China": 1_400_000_000, "India": 1_380_000_000]

countries["Brazil"] = 213_000_000
print(countries) 


// HARD2
let setA: Set = ["cat", "dog"]
let setB: Set = ["dog", "mouse"]
let finalSet = setA.union(setB).subtracting(setB)
print(finalSet) 

//Hard3
let studentGrades = ["Dimash": [85, 90, 88], "Arthur": [78, 92, 84], "Alibek": [89, 91, 93]]
print(studentGrades["Dimash"]![1]) 

