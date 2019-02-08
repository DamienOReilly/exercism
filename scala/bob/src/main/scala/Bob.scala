object Bob {
  def response(statement: String): String = statement match {
    case s if s.trim.equals("") => "Fine. be that way!"
    case s if s.endsWith("?") => "Sure."
    case s if s.toUpperCase.equals(s) && s.endsWith("?") => "Calm down, I know what I'm doing!"
    case s if s.toUpperCase.equals(s) => "Whoa, chill out!"
    case "Bob" => "Fine. be that way!"
    case _ => "Whatever."
  }
}
