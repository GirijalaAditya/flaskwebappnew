FROM python
MAINTAINER ashutoshh@linux.com
RUN mkdir  /webapps
COPY  Flaskex  /webapps/
# all data from directory Flaskex is copying /webapps
WORKDIR /webapps
# chanding directory during build 
RUN pip3 install -r  requirements.txt 
# to install all python modules 
EXPOSE 5000
CMD python app.py 
