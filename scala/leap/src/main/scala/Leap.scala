object Leap {
  def leapYear(year: Int): Boolean = criteria1(year) && (criteria2(year) || criteria3(year))

  private def criteria1(year: Int) = year % 4 == 0
  private def criteria2(year: Int) = year % 100 != 0
  private def criteria3(year: Int) = year % 400 == 0
}
