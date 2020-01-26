FROM openjdk:11.0.6-jre

ENV SIMULATIONS_FOLDER /simulations
ENV SIMULATIONS_INPUT /input
ENV GATLING_HOME /opt/gatling

RUN wget -q -O /tmp/gatling.zip https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/3.3.1/gatling-charts-highcharts-bundle-3.3.1-bundle.zip && \
  cd /opt && \
  unzip /tmp/gatling.zip && \
  rm /tmp/gatling.zip && \
  ln -s gatling-charts-highcharts-bundle-* gatling

RUN mkdir /simulations /input
ADD run.sh /opt/gatling/run.sh

RUN useradd gatling && \
  chown -R gatling /opt/gatling-* /simulations /input && \
  chmod a+rx /opt/gatling/run.sh

USER gatling
ENTRYPOINT ["/opt/gatling/run.sh"]
