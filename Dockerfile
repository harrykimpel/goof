FROM node:8

RUN apt-get -y update && apt-get -y install ca-certificates apt-transport-https

#RUN apt-get -y update && apt-get -y install \
#    liblog4j2-java=2.11.1-2

RUN mkdir /usr/src/goof
RUN mkdir /tmp/extracted_files
COPY . /usr/src/goof
WORKDIR /usr/src/goof

RUN npm update
RUN npm install
EXPOSE 3001
EXPOSE 9229
ENTRYPOINT ["npm", "start"]
