    #!/bin/bash
    clear
    echo illusion Kernel Compile Tool v1.0
    echo By MrDarkness
    echo Please Sit Back And Chill...
    export CROSS_COMPILE=/home/$USER/aarch64-linux-gnu/bin/aarch64-linux-gnu-    
    export ARCH=arm64
    make illusion_s2_defconfig
    make -j38 | tee /home/$USER/kernel_output.log
    mv /home/$USER/illusionkernel/arch/arm64/boot/Image.gz-dtb /home/$USER/illusionkernel/zImage
    f="/home/$USER/illusionkernel/zImage"
    i="0"
    if [ -e $f ]
    then
    echo "Compile Success!"
    else
    echo "Compile Failed! Fix Your Error"
    fi