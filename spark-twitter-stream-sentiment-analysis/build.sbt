name := """spark-twitter-stream-example"""

version := "1.0.0"

scalaVersion := "2.11.6"

libraryDependencies ++= Seq(
  "org.apache.spark" %% "spark-streaming" % "2.3.0",
  "org.apache.bahir" %% "spark-streaming-twitter" % "2.0.1",
  "org.apache.spark" % "spark-core_2.11" % "2.3.0"
)
