object SpaceAge {
  val earthSecs = 31557600
  val mercuryYear = 0.2408467
  val venusYear = 0.61519726
  val marsYear = 1.8808158
  val jupiterYear = 11.862615
  val saturnYear = 29.447498
  val uranusYear = 84.016846
  val neptuneYear = 164.79132

  def onEarth(seconds: Double) = setPercision(earthYears(seconds))
  def onMercury(seconds: Double) = setPercision(earthYears(seconds) / mercuryYear)
  def onNeptune(seconds: Double) = setPercision(earthYears(seconds) / neptuneYear)
  def onUranus(seconds: Double) = setPercision(earthYears(seconds) / uranusYear)
  def onSaturn(seconds: Double) = setPercision(earthYears(seconds) / saturnYear)
  def onJupiter(seconds: Double) = setPercision(earthYears(seconds) / jupiterYear)
  def onMars(seconds: Double) = setPercision(earthYears(seconds) / marsYear)
  def onVenus(seconds: Double) = setPercision(earthYears(seconds) / venusYear)

  def earthYears(seconds: Double) = seconds / earthSecs

  def setPercision(input: Double)= BigDecimal(input).setScale(2, BigDecimal.RoundingMode.HALF_UP).toDouble
}
