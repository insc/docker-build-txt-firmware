
Build [txt-firmware](https://github.com/insc/txt-firmware) 

Example

    sudo docker build -t txt-firmware-build .
    sudo docker run -i --name buildroot_output txt-firmware-build /bin/echo "Data only."
    sudo docker run --rm -ti --volumes-from buildroot_output -v $(pwd)/buildroot:/buildroot_output txt-firmware-build
    
    make O=/buildroot_output/ fischertechnik_TXT_defconfig 
    make O=/buildroot_output/

Tested on linux 
