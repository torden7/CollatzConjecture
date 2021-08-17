func getInteger() -> Int {
  while true {
    print("\nType a whole positive number:")
    // Getting the user's input and checking if the input is correct
    if let input = readLine(), 
    input.count <= 15,
    let unwrappedNumber = Int(input), 
    unwrappedNumber > 0 {
      return unwrappedNumber
    } else {
      print("""
      Incorrect input!
      You should enter a whole positive number with no more than 15 digits.
      Try again.
      """)
      continue
    }
  }
}

func getYesOrNo() -> String {
  while true {
    let entered = readLine()!.lowercased()

    if "yes" == entered || "no" == entered {
      return entered
    }
    print("You should enter \"yes\" or \"no\".");
  }
}

// A short info for the user about the point of the programm
print("""
The Collatz conjecture supposes that after series of operations 
on the given number we always end up getting 1.

If the given number is even - we divide it by 2.
If the number is odd - we multiply it by 3 and add 1.
And we do the same with the results until we get 1.
""")

while true {
  var number = getInteger()
  print("Your number is: \(number)\n")

  print("The Collatz sequence:")
  print(number)
  while number != 1 {
    // Checking if number is odd or even
    // and doing the corresponding operation
    if number % 2 == 0 {
      number /= 2
    } else {
      number = 3 * number + 1
    }
    print("\(number)")
  }

  print("\nFinally, you've got 1.\n")
  print("Get a new sequence? Type yes / no.")

  if ("no" == getYesOrNo()) {
    break
  }
}