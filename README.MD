
README 

docker container for docker ft community firmware

Example

Build>sudo  docker build -t ftrobopro-build .
Create Container> sudo  docker run -i --name buildroot_output ftrobopro-build /bin/echo "Data only."
Run> sudo docker run --rm -ti --volumes-from buildroot_output -v $(pwd)/buildroot:/buildroot_output ftrobopro-build
