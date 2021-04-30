from pyspark.sql import SparkSession

spark = SparkSession.builder \
            .appName("app_name") \
            .getOrCreate()

hadoop_conf=spark._jsc.hadoopConfiguration()
hadoop_conf.set("fs.s3n.impl", "org.apache.hadoop.fs.s3native.NativeS3FileSystem")
hadoop_conf.set("fs.s3n.awsAccessKeyId", 'AKIAQELKM5YSLAHFANFH')
hadoop_conf.set("fs.s3n.awsSecretAccessKey", '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')


    
df=spark.read.csv("s3a://aws-devops-course-liquan/addresses.csv")
df.show()