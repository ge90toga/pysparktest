from pyspark.sql import SparkSession
import os
print ('PYTHONPATH', os.environ['PYTHONPATH'])
print('SPARK_HOME', os.environ['SPARK_HOME'])
print('JAVA_HOME', os.environ['JAVA_HOME'])
spark = SparkSession.builder.getOrCreate()
df = spark.sql("select 'spark' as hello")

df.show()