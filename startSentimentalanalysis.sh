spark-submit \
  --master local[4] \
  --packages "org.apache.spark:spark-streaming-twitter_2.10:1.5.1" \
  --jars /Users/ramakrishnaaddanki/SparkWorkshopGITAM/spark-core_2.11-1.5.2.logging.jar \
  --class com.rk.spark.streaming.twitter.example.TwitterSentimentScore \
  /Users/ramakrishnaaddanki/SparkWorkshopGITAM/spark-twitter-stream-sentiment-analysis/target/scala-2.11/spark-twitter-stream-example_2.11-1.0.0.jar
