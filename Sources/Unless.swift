/// Execute the given closure only if the result of the first argument
/// is false
func unless(_ condition: @autoclosure () -> Bool, _ closure: () -> Void) {
    guard condition() == false else {
        return
    }

    closure()
}
