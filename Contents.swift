/*
/* Level 1 */
class Calculator {
    func calculate(operator: String, firstNumber: Double, secondNumber: Double) -> Double {
        switch `operator` {
        case "+":
            return firstNumber + secondNumber
        case "-":
            return firstNumber - secondNumber
        case "*":
            return firstNumber * secondNumber
        case "/":
            return firstNumber / secondNumber
        default:
            return 0
        }
    }
}

let calculator = Calculator()
let addResult = calculator.calculate(operator: "+", firstNumber: 10, secondNumber: 20)
let subtractResult = calculator.calculate(operator: "-", firstNumber: 10, secondNumber: 20)
let multiplyResult = calculator.calculate(operator: "*", firstNumber: 10, secondNumber: 20)
let divideResult = calculator.calculate(operator: "/", firstNumber: 10, secondNumber: 20)



/* Level 2 */
class Calculator {
    func calculate(operator: String, firstNumber: Double, secondNumber: Double) -> Double {
        switch `operator` {
        case "+":
            return firstNumber + secondNumber
        case "-":
            return firstNumber - secondNumber
        case "*":
            return firstNumber * secondNumber
        case "/":
            return firstNumber / secondNumber
        case "%":
            return firstNumber.truncatingRemainder(dividingBy: secondNumber)
        default:
            return 0
        }
    }
}

let calculator = Calculator()
let addResult = calculator.calculate(operator: "+", firstNumber: 10, secondNumber: 20)
let subtractResult = calculator.calculate(operator: "-", firstNumber: 10, secondNumber: 20)
let multiplyResult = calculator.calculate(operator: "*", firstNumber: 10, secondNumber: 20)
let divideResult = calculator.calculate(operator: "/", firstNumber: 10, secondNumber: 20)
let remainderResult = calculator.calculate(operator: "%", firstNumber: 10, secondNumber: 20)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("remainderResult : \(remainderResult)")


*/

/* Level 3 */
class Calculator {
    var firstNumber: Double
    var secondNumber: Double

    
    init(firstNumber: Double, secondNumber: Double) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }

    
    func calculate(operator: String) -> Double {
        class AddOperation {
            func operate(firstNumber: Double, secondNumber: Double) -> Double {
                return firstNumber + secondNumber
            }
        }
        
        class SubtractOperation {
            func operate(firstNumber: Double, secondNumber: Double) -> Double {
                return firstNumber - secondNumber
            }
        }
        
        class MultiplyOperation {
            func operate(firstNumber: Double, secondNumber: Double) -> Double {
                return firstNumber * secondNumber
            }
        }
        
        class DivideOperation {
            func operate(firstNumber: Double, secondNumber: Double) -> Double {
                guard secondNumber != 0 else {
                    return 0
                }
                return firstNumber / secondNumber
            }
        }
        
        class RemainderOperation {
            func operate(firstNumber: Double, secondNumber: Double) -> Double {
                guard secondNumber != 0 else {
                    return 0
                }
                return firstNumber.truncatingRemainder(dividingBy: secondNumber)
            }
        }

        // operator에 따라 프로퍼티의 함수를 실행
        switch `operator` {
        case "+":
            return AddOperation().operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-":
            return SubtractOperation().operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*":
            return MultiplyOperation().operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/":
            return DivideOperation().operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "%":
            return RemainderOperation().operate(firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            return 0
        }
    }
}


let calculator = Calculator(firstNumber: 10, secondNumber: 20)

let addResult = calculator.calculate(operator: "+")
let subtractResult = calculator.calculate(operator: "-")
let multiplyResult = calculator.calculate(operator: "*")
let divideResult = calculator.calculate(operator: "/")
let remainderResult = calculator.calculate(operator: "%")

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("remainderResult : \(remainderResult)")
