# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/mg/pico/pico-sdk/tools/pioasm"
  "/home/mg/Documents/raspberry-pi-pico-projects/raspberry-pi-pico-setup/build2/pioasm"
  "/home/mg/Documents/raspberry-pi-pico-projects/raspberry-pi-pico-setup/build2/pioasm-install"
  "/home/mg/Documents/raspberry-pi-pico-projects/raspberry-pi-pico-setup/build2/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/tmp"
  "/home/mg/Documents/raspberry-pi-pico-projects/raspberry-pi-pico-setup/build2/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/pioasmBuild-stamp"
  "/home/mg/Documents/raspberry-pi-pico-projects/raspberry-pi-pico-setup/build2/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src"
  "/home/mg/Documents/raspberry-pi-pico-projects/raspberry-pi-pico-setup/build2/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/pioasmBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/mg/Documents/raspberry-pi-pico-projects/raspberry-pi-pico-setup/build2/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/pioasmBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/mg/Documents/raspberry-pi-pico-projects/raspberry-pi-pico-setup/build2/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/pioasmBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()
