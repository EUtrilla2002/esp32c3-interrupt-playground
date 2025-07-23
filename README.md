# esp32c3-interrupt-playground

Bare - metal environment for esp32c3 in order to teach Interruptions and other RISC-V functions.

Inspired by: Embedded Systems Research Group (ESRG) repository: https://github.com/AlexManoJAM/RISC-V-Devkit-for-ESP32C3/tree/main


STEPS:

1. **Download toolchain:** https://github.com/xpack-dev-tools/riscv-none-embed-gcc-xpack/releases/
2. Edit **build.mk** toolchain route/ put the toolchain route in your $PATH
3. BUILD your proyect :

   ```
   make -C mdk-main/examples/<your_proyect> build
   ```
4. **FLASH** your proyect

   ```
   make -C mdk-main/examples/<your_proyect> flash
   ```
5. **DEBUG** your proyect

   ```
   openocd -f interface/esp_usb_jtag.cfg -f target/esp32c3.cfg
   riscv32-esp-elf-gdb <route>/<your_proyect>.elf -ex "target remote localhost:3333"
   ```
