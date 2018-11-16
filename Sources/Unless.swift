/// Execute the given closure only if the result of the first argument
/// is false
func unless(_ condition: @autoclosure () -> Bool, _ closure: () -> Void) {
    if condition() == false {
        closure()
    }
}
