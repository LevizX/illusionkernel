    #!/bin/bash
    clear
    echo FusionKernel Compile Tool v1.0
    echo By MrDarkness
    echo Please Sit Back And Chill...
    export KERNELDIR=`readlink -f .`
    export CROSS_COMPILE=/home/$USER/aarch64-sabermod-7.0/bin/aarch64-   
    export ARCH=arm64
    make fusion_defconfig
    make -j38 | tee $KERNELDIR/built/kernel_output.txt
    rm -rf $KERNELDIR/built
    mkdir -p $KERNELDIR/built/
    mv $KERNELDIR/arch/arm64/boot/Image.gz-dtb $KERNELDIR/built/zImage
    find -name '*.ko' -exec mv -v {} $KERNELDIR/built/ \;
    if [ -f $KERNELDIR/built/*.ko ];
    then
    mkdir -p $KERNELDIR/built/system/lib/modules/
    mv $KERNELDIR/built/*.ko $KERNELDIR/built/system/lib/modules/
    fi

    echo ""
    echo "Compile Done"

