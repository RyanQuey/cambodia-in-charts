package constants

object DatasetMetadata {
  var datasets : Set[Map[String, String]] = Set(
    Map(
      "slug" -> "sdg-target-for-access-to-sanitation",
      "friendlyName" -> "Has country already reached SDG target for access to sanitation? (1990 - 2015)",
    ),
    Map(
      "slug" -> "sdg-target-on-child-mortality",
      "friendlyName" -> "Has country already reached SDG target on child mortality? (1975 - 2017)",
    )
  )
}
