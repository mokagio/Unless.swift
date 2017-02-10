/// Execute the given closure `do` only if the result of the first argument
/// is false
func unless(_ condition: () -> Bool, do closure: @escaping () -> ()) {
  guard condition() == false else {
    return
  }

  closure()
}
