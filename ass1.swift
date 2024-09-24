var firstName: String = "Dinmukhammed"
var lastName: String = "Ismailov"
var age: Int = 20
var birthYear: Int = 2004
var isStudent: Bool = true
var height: Double = 1.78

let currentYear: Int = 2024
age = currentYear - birthYear 


var hobby: String = "Go to the gym"
var numberOfHobbies: Int = 3
var favoriteNumber: Int = 5
var isHobbyCreative: Bool = true

var favoriteFood: String = "Beshbarmak"
var favoriteColor: String = "Black"


var lifeStory: String = "My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear). I am currently a student. I enjoy \(hobby), which is a creative hobby. I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber). My favorite food is \(favoriteFood), and my favorite color is \(favoriteColor)."

var futureGoals: String = "In the future, I want to become a professional ABAP developer."
lifeStory += " \(futureGoals)"

print(lifeStory)
