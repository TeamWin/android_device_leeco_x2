TWRP device configuration for LeEco Le Max 2
==============

kernel source used for prebuilt kernel:
https://github.com/LineageOS/android_kernel_leeco_msm8996/

To compile android-9.0 based TWRP
==============

    export ALLOW_MISSING_DEPENDENCIES=true

    . build/envsetup.sh
    
    lunch omni_x2-eng && \
    mka adbd recoveryimage 2>&1 | tee make_x2.log
    
tee command makes a copy of the terminal output to a file.
If you're using Windows PowerShell? Please relace tee with
Tee-Object


Device configuration for Letv Max2 (x820 x821 x822 x829)
=====================================

Basic                   | Spec Sheet
-----------------------:|:-------------------------
CPU                     | Dual-core 2.15GHz Kryo & dual-core 1.6GHz Kryo
CHIPSET                 | Qualcomm MSM8996 Snapdragon 820
GPU                     | 624MHz Adreno 530
Memory                  | 4/6 GB (LPDDR4)
Shipped Android Version | 6.0 (Marshmallow)
Storage                 | 64/128 GB (UFS2.0)
Battery                 | 3100 mAh (non-removable)
Dimensions              | 156.8 x 77.6 x 7.99 mm
Display                 | 1440 x 2560 pixels, 5.7" LTPS IPS LCD, 16:9 ratio (~515 PPI density)
Rear Camera             | 21.0 MP, LED flash (Sony Exmor RS IMX230 f/2.0, 1/2.4")
Front Camera            | 8.0 MP (OmniVision OV8865 f/2.2)
Release Month           | April 2016

![LeEco Le Max 2](https://images-na.ssl-images-amazon.com/images/I/61E7em61VYL._AC_SL1500_.jpg "LeEco Le Max 2")