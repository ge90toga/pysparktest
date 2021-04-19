#!/bin/sh

docker run -it --entrypoint spark-shell  -p 4040:4040 -v $(pwd):/job godatadriven/pyspark /job