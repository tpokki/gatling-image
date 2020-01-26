FROM openjdk:11.0.6-jre

RUN wget -q -O /tmp/gatling.zip https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/3.3.1/gatling-charts-highcharts-bundle-3.3.1-bundle.zip && \
  cd /opt && \
  unzip /tmp/gatling.zip && \
  rm /tmp/gatling.zip && \
  ln -s gatling-charts-highcharts-bundle-* gatling && \
  useradd gatling && \
  chown -R gatling /opt/gatling-*

USER gatling
ENTRYPOINT ["/opt/gatling/bin/gatling.sh"]
