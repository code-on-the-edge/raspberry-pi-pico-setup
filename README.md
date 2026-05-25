# Raspberry Pi Pico 1 and 2 Setup

```bash
# Install Pico SDK
mkdir ~/pico
cd ~/pico
git clone https://github.com/raspberrypi/pico-sdk.git --branch master
cd pico-sdk
git submodule update --init
cd ..
git clone https://github.com/raspberrypi/pico-examples.git --branch master

# Install dependencies
sudo apt update
# Raspberry Pi Pico / RP2040 development environment setup
# cmake                          -> Generates build files from CMakeLists.txt
# gcc-arm-none-eabi             -> ARM Cortex-M compiler toolchain
# libnewlib-arm-none-eabi       -> Embedded C standard library
# build-essential               -> make + gcc + Linux build tools
# g++                           -> Native Linux C++ compiler
# libstdc++-arm-none-eabi-newlib-> Embedded ARM C++ standard library
sudo apt install cmake gcc-arm-none-eabi libnewlib-arm-none-eabi build-essential
sudo apt install g++ libstdc++-arm-none-eabi-newlib

# Configure environment
echo "export PICO_SDK_PATH=$HOME/pico/pico-sdk" >> ~/.bashrc
source ~/.bashrc
```
# Picotool
```bash
# Install dependencies
sudo apt update
# Required to build picotool with USB support enabled
# Enables commands such as: load, save, reboot, verify
sudo apt install libusb-1.0-0-dev

# Clone Repo
git clone https://github.com/raspberrypi/picotool
cd picotool

# Build Picotool
mkdir build
cd build
export PICO_SDK_PATH=../../pico/pico-sdk/
cmake ..
make

# Check Installation
./picotool help
```

# Flash with Picotool
```bash
cd path/to/project/folder/
mkdir build
cd build
cmake ..
make
sudo /home/$USER/picotool/build/picotool load -f blink.uf2
```
# References
Getting started with Raspberry Pi Pico-series
* https://pip-assets.raspberrypi.com/categories/610-raspberry-pi-pico/documents/RP-008276-DS-1-getting-started-with-pico.pdf?disposition=inline

Picotool
* https://github.com/raspberrypi/picotool
