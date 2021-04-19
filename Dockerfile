FROM godatadriven/pyspark

USER root
RUN mkdir /job
COPY *.py /job
RUN chmod 777 /job/*.py

ENTRYPOINT spark-submit /job/start.py