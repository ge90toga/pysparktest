FROM godatadriven/pyspark@sha256:2ed3d2b6c3d540f9279ad0be8cc375d4a4fdc42b52496572adf21313d4ef7e4a

USER root
RUN mkdir /job
COPY *.py /job
RUN chmod 777 /job/*.py

ENV AWS_ACCESS_KEY_ID AKIAQELKM5YSLAHFANFH
ENV AWS_SECRET_ACCESS_KEY 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

ENTRYPOINT ["spark-submit", "/job/start.py"]