Spark Twitter Stream Example
============================

A few lines of code to demo how streaming works with Spark, in particular using the extensions provided by [Apache Bahir](https://bahir.apache.org/) to read a live stream of tweets, which will be processed to assign it a sentiment score (using a very naive algorithm).

To make it work on your installation, be sure to add a `twitter4j.properties` under `src/main/resources` that includes the following information:

    oauth.consumerKey=***
    oauth.consumerSecret=***
    oauth.accessToken=***
    oauth.accessTokenSecret=***

Visit [apps.twitter.com](https://apps.twitter.com) to get your own API keys.

To submit the job to an existing Spark installation you can package the job with the following command:

    sbt package

and then submit it with the following command:

    $SPARK_HOME/bin/spark-submit \
      --master local[5] \
      --jars SparkWorkshopGITAM/spark-core_2.11-1.5.2.logging.jar \
      --class com.rk.spark.streaming.twitter.example.TwitterSentimentScore \
      target/scala-2.11/spark-twitter-stream-example-1.0.0.jar
      

After running the `sbt package` command you'll find the required JARs in your local Ivy cache (`$HOME/.ivy2/cache/`).
