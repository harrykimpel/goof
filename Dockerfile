FROM node:14

RUN mkdir /usr/src/goof
RUN mkdir /tmp/extracted_files
COPY . /usr/src/goof
WORKDIR /usr/src/goof

RUN apt-get install -y imagemagick

RUN npm update
RUN npm install

#RUN curl -k -LO https://downloadarchive.documentfoundation.org/libreoffice/old/6.2.3.1/deb/x86_64/LibreOffice_6.2.3.1_Linux_x86-64_deb.tar.gz
#RUN tar -xvf LibreOffice_6.2.3.1_Linux_x86-64_deb.tar.gz
#RUN cd LibreOffice_6.2.3.1_Linux_x86-64_deb/DEBS/
#RUN dpkg -i *.deb

EXPOSE 3001
EXPOSE 9229
ENTRYPOINT ["npm", "start"]
