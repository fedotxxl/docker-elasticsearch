#https://github.com/dockerfile/elasticsearch/issues/4
#to build run:
#sudo docker build -t fbelov/elasticsearch .
#docker create -p 9200:9200 -p 9300:9300 --name elastic fbelov/elasticsearch
#docker start elastic
#http://localhost:9200/_plugin/head/
#http://localhost:9200/_plugin/hq/

FROM elasticsearch

RUN /usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head
RUN /usr/share/elasticsearch/bin/plugin install royrusso/elasticsearch-HQ

#http://stackoverflow.com/questions/23604868/install-marvel-plugin-for-elasticsearch
#RUN /usr/share/elasticsearch/bin/plugin install license
#RUN /usr/share/elasticsearch/bin/plugin install marvel-agent
#RUN /usr/share/elasticsearch/bin/kibana plugin --install elasticsearch/marvel/latest
#RUN /usr/share/elasticsearch/bin/kibana

#copy docker file
ADD Dockerfile /Dockerfile

EXPOSE 9200 9300