echo "FROM python" > Dockerfile
echo "RUN apt-get update -y" >> Dockerfile 
echo "RUN apt-get install -y python3-pip" >> Dockerfile 
echo "RUN pip install flask" >> Dockerfile 
echo "COPY index.html /home/myapp/templates/" >> Dockerfile 
echo "COPY sample_app.py /home/myapp/" >> Dockerfile 
echo "EXPOSE 9000" >> Dockerfile 
echo "CMD python3 /home/myapp/sample_app.py" >> Dockerfile

docker build -t web .
docker run -d -p 9000:9000 --name web web
docker ps 
