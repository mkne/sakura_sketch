COMMON_OBJECTS = ./gr_common/core/HardwareSerial.o ./gr_common/core/hooks.o ./gr_common/core/IPAddress.o ./gr_common/core/main.o ./gr_common/core/new.o ./gr_common/core/Print.o ./gr_common/core/Stream.o ./gr_common/core/Tone.o ./gr_common/core/usbdescriptors.o ./gr_common/core/usb_cdc.o ./gr_common/core/usb_core.o ./gr_common/core/usb_hal.o ./gr_common/core/utilities.o ./gr_common/core/WInterrupts.o ./gr_common/core/wiring.o ./gr_common/core/wiring_analog.o ./gr_common/core/wiring_digital.o ./gr_common/core/wiring_pulse.o ./gr_common/core/wiring_shift.o ./gr_common/core/WMath.o ./gr_common/core/WString.o ./gr_common/core/avr/avrlib.o ./gr_common/lib/AdafruitGFX/Adafruit_GFX.o ./gr_common/lib/AdafruitGFX/Adafruit_SPITFT.o ./gr_common/lib/AdafruitGFX/glcdfont.o ./gr_common/lib/EEPROM/EEPROM.o ./gr_common/lib/EEPROM/utility/r_flash_api_rx600.o ./gr_common/lib/Ethernet/Ethernet.o ./gr_common/lib/Ethernet/utility/driver/phy.o ./gr_common/lib/Ethernet/utility/driver/r_ether.o ./gr_common/lib/Ethernet/utility/driver/t4_driver.o ./gr_common/lib/Ethernet/utility/driver/timer.o ./gr_common/lib/Ethernet/utility/r_byteq_v1.30/r_byteq.o ./gr_common/lib/Ethernet/utility/T4_src/config_tcpudp.o ./gr_common/lib/Ethernet/utility/T4_src/ether.o ./gr_common/lib/Ethernet/utility/T4_src/ip.o ./gr_common/lib/Ethernet/utility/T4_src/r_dhcp_client.o ./gr_common/lib/Ethernet/utility/T4_src/r_dns_client.o ./gr_common/lib/Ethernet/utility/T4_src/T4_Version.o ./gr_common/lib/Ethernet/utility/T4_src/tcp.o ./gr_common/lib/Ethernet/utility/T4_src/tcp_api.o ./gr_common/lib/Ethernet/utility/T4_src/udp.o ./gr_common/lib/Ethernet/utility/T4_src/checksum/rx/cksum_rx_little.o ./gr_common/lib/Firmata/Firmata.o ./gr_common/lib/LiquidCrystal/LiquidCrystal.o ./gr_common/lib/MsTimer2/MsTimer2.o ./gr_common/lib/postParser/postParser.o ./gr_common/lib/PubSubClient/PubSubClient.o ./gr_common/lib/RTC/RTC.o ./gr_common/lib/RTC/utility/RX63_RTC.o ./gr_common/lib/SD/File.o ./gr_common/lib/SD/SD.o ./gr_common/lib/SD/utility/Sd2Card.o ./gr_common/lib/SD/utility/SdFile.o ./gr_common/lib/SD/utility/SdVolume.o ./gr_common/lib/Servo/Servo.o ./gr_common/lib/SoftwareSerial/SoftwareSerial.o ./gr_common/lib/SPI/SPI.o ./gr_common/lib/Stepper/Stepper.o ./gr_common/lib/WavMp3p/WavMp3p.o ./gr_common/lib/WavMp3p/utility/bit.o ./gr_common/lib/WavMp3p/utility/decoder.o ./gr_common/lib/WavMp3p/utility/fixed.o ./gr_common/lib/WavMp3p/utility/frame.o ./gr_common/lib/WavMp3p/utility/huffman.o ./gr_common/lib/WavMp3p/utility/layer12.o ./gr_common/lib/WavMp3p/utility/layer3.o ./gr_common/lib/WavMp3p/utility/minimad.o ./gr_common/lib/WavMp3p/utility/stream.o ./gr_common/lib/WavMp3p/utility/synth.o ./gr_common/lib/WavMp3p/utility/timer.o ./gr_common/lib/WavMp3p/utility/version.o ./gr_common/lib/WavMp3p/utility/wavmp3p_audio.o ./gr_common/lib/WavMp3p/utility/wavmp3p_ctrl.o ./gr_common/lib/WavMp3p/utility/wavmp3p_dma.o ./gr_common/lib/WavMp3p/utility/wavmp3p_gpio.o ./gr_common/lib/WavMp3p/utility/wavmp3p_icu.o ./gr_common/lib/WavMp3p/utility/wavmp3p_init.o ./gr_common/lib/WavMp3p/utility/wavmp3p_play.o ./gr_common/lib/WavMp3p/utility/wavmp3p_play_mp3.o ./gr_common/lib/WavMp3p/utility/wavmp3p_play_wav.o ./gr_common/lib/WavMp3p/utility/wavmp3p_pwm.o ./gr_common/lib/WiFiEsp/WiFiEsp.o ./gr_common/lib/WiFiEsp/WiFiEspClient.o ./gr_common/lib/WiFiEsp/WiFiEspServer.o ./gr_common/lib/WiFiEsp/WiFiEspServerClientWrapper.o ./gr_common/lib/WiFiEsp/WiFiEspUdp.o ./gr_common/lib/WiFiEsp/utility/EspDrv.o ./gr_common/lib/WiFiEsp/utility/RingBuffer.o ./gr_common/lib/Wire/Wire.o ./gr_common/lib/Wire/utility/I2cMaster.o ./gr_common/lib/Wire/utility/twi_rx.o ./gr_common/rx63n/exception_handler.o ./gr_common/rx63n/hardware_setup.o ./gr_common/rx63n/interrupt_handlers.o ./gr_common/rx63n/reboot.o ./gr_common/rx63n/reset_program.o ./gr_common/rx63n/util.o ./gr_common/rx63n/vector_table.o 
USER_OBJECTS = ./gr_sketch.o 
COMMON_LIBRARY = ./gr_common/gr_common.a 
USER_LIBRARY = 
COMMON_INCLUDES = -I./gr_common -I./gr_common/core -I./gr_common/core/avr -I./gr_common/lib -I./gr_common/lib/AdafruitGFX -I./gr_common/lib/ArduinoJson -I./gr_common/lib/ArduinoJson/ArduinoJson -I./gr_common/lib/ArduinoJson/ArduinoJson/Array -I./gr_common/lib/ArduinoJson/ArduinoJson/Collection -I./gr_common/lib/ArduinoJson/ArduinoJson/Deserialization -I./gr_common/lib/ArduinoJson/ArduinoJson/Document -I./gr_common/lib/ArduinoJson/ArduinoJson/Json -I./gr_common/lib/ArduinoJson/ArduinoJson/Memory -I./gr_common/lib/ArduinoJson/ArduinoJson/Misc -I./gr_common/lib/ArduinoJson/ArduinoJson/MsgPack -I./gr_common/lib/ArduinoJson/ArduinoJson/Numbers -I./gr_common/lib/ArduinoJson/ArduinoJson/Object -I./gr_common/lib/ArduinoJson/ArduinoJson/Operators -I./gr_common/lib/ArduinoJson/ArduinoJson/Polyfills -I./gr_common/lib/ArduinoJson/ArduinoJson/Polyfills/gsl -I./gr_common/lib/ArduinoJson/ArduinoJson/Polyfills/mpl -I./gr_common/lib/ArduinoJson/ArduinoJson/Polyfills/type_traits -I./gr_common/lib/ArduinoJson/ArduinoJson/Serialization -I./gr_common/lib/ArduinoJson/ArduinoJson/Strings -I./gr_common/lib/ArduinoJson/ArduinoJson/StringStorage -I./gr_common/lib/ArduinoJson/ArduinoJson/Variant -I./gr_common/lib/ArduinoJson/examples -I./gr_common/lib/ArduinoJson/examples/JsonGeneratorExample -I./gr_common/lib/ArduinoJson/examples/JsonHttpClient -I./gr_common/lib/ArduinoJson/examples/JsonParserExample -I./gr_common/lib/ArduinoJson/examples/JsonServer -I./gr_common/lib/ArduinoJson/examples/MsgPackParser -I./gr_common/lib/ArduinoJson/examples/StringExample -I./gr_common/lib/EEPROM -I./gr_common/lib/EEPROM/utility -I./gr_common/lib/Ethernet -I./gr_common/lib/Ethernet/utility -I./gr_common/lib/Ethernet/utility/driver -I./gr_common/lib/Ethernet/utility/r_byteq_v1.30 -I./gr_common/lib/Ethernet/utility/r_config -I./gr_common/lib/Ethernet/utility/T4_src -I./gr_common/lib/Ethernet/utility/T4_src/checksum -I./gr_common/lib/Ethernet/utility/T4_src/checksum/rx -I./gr_common/lib/Firmata -I./gr_common/lib/LiquidCrystal -I./gr_common/lib/MsTimer2 -I./gr_common/lib/postParser -I./gr_common/lib/postParser/examples -I./gr_common/lib/postParser/examples/Light_Switch -I./gr_common/lib/PubSubClient -I./gr_common/lib/PubSubClient/examples -I./gr_common/lib/PubSubClient/examples/mqtt_basic -I./gr_common/lib/RTC -I./gr_common/lib/RTC/utility -I./gr_common/lib/SD -I./gr_common/lib/SD/utility -I./gr_common/lib/Servo -I./gr_common/lib/SoftwareSerial -I./gr_common/lib/SPI -I./gr_common/lib/Stepper -I./gr_common/lib/WavMp3p -I./gr_common/lib/WavMp3p/utility -I./gr_common/lib/WavMp3p/utility/msvc++ -I./gr_common/lib/WiFiEsp -I./gr_common/lib/WiFiEsp/examples -I./gr_common/lib/WiFiEsp/examples/ConnectWPA -I./gr_common/lib/WiFiEsp/examples/ScanNetworks -I./gr_common/lib/WiFiEsp/examples/UdpNTPClient -I./gr_common/lib/WiFiEsp/examples/UdpSendReceive -I./gr_common/lib/WiFiEsp/examples/WebClient -I./gr_common/lib/WiFiEsp/examples/WebClientRepeating -I./gr_common/lib/WiFiEsp/examples/WebClientSSL -I./gr_common/lib/WiFiEsp/examples/WebServer -I./gr_common/lib/WiFiEsp/examples/WebServerAP -I./gr_common/lib/WiFiEsp/examples/WebServerLed -I./gr_common/lib/WiFiEsp/utility -I./gr_common/lib/Wire -I./gr_common/lib/Wire/utility -I./gr_common/rx63n 
USER_INCLUDES = -I./USB_Driver 
PROJECT = sakura_sketch
GCC_BIN :=E:\GCC for Renesas RX 4.8.4.201801-GNURX-ELF/rx-elf/rx-elf/bin
GCCPATH :=E:\GCC for Renesas RX 4.8.4.201801-GNURX-ELF/rx-elf/rx-elf
#GCC_BIN :=C:/Renesas/e2studio/GNURXv14.03-ELF/rx-elf/rx-elf/bin
#GCCPATH :=C:/Renesas/e2studio/GNURXv14.03-ELF/rx-elf/rx-elf/
GCCVER :=4.8.4.201801-GNURX
#GCCVER :=4.8-GNURX_v14.03
SYS_INCLUDES = -I./gr_common -I./gr_common/core -I./gr_common/rx63n -I./gr_common/lib/RTC -I./gr_common/lib/EEPROM -I./gr_common/lib/Ethernet -I./gr_common/lib/Ethernet/utility -I./gr_common/lib/Ethernet/utility/driver -I./gr_common/lib/Ethernet/utility/r_byteq_v1.30 -I./gr_common/lib/Ethernet/utility/r_config -I./gr_common/lib/Ethernet/utility/T4_src -I./gr_common/lib/Ethernet/utility/T4_src/checksum -I./gr_common/lib/Ethernet/utility/T4_src/checksum/rx -I./gr_common/lib/Firmata -I./gr_common/lib/LiquidCrystal -I./gr_common/lib/SD -I./gr_common/lib/Servo -I./gr_common/lib/SoftwareSerial -I./gr_common/lib/SPI -I./gr_common/lib/Stepper -I./gr_common/lib/Wire -I./gr_common/lib/WavMp3p -I./gr_common/lib/WavMp3p/utility -I./gr_common/lib/WiFiEsp -I./gr_common/lib/WiFiEsp/utility -I./gr_common/lib/MsTimer2 -I./gr_common/lib/ArduinoJson -I./gr_common/lib/postParser -I./gr_common/lib/PubSubClient -I./gr_common/lib/AdafruitGFX
############################################################################### 
AS      = "$(GCC_BIN)/rx-elf-gcc"
CC      = "$(GCC_BIN)/rx-elf-gcc"
CPP     = "$(GCC_BIN)/rx-elf-g++"
LD      = "$(GCC_BIN)/rx-elf-g++"
OBJCOPY = "$(GCC_BIN)/rx-elf-objcopy"
OBJDUMP = "$(GCC_BIN)/rx-elf-objdump"
SIZE    = "$(GCC_BIN)/rx-elf-size"
AR      = "$(GCC_BIN)/rx-elf-ar"

CPU = -O2 -ffunction-sections -fdata-sections -fsigned-char -fno-function-cse -mcpu=rx600 -mlittle-endian-data -mno-balign -m64bit-doubles
CC_FLAGS = $(CPU) -I"$(GCCPATH)/rx-elf/include" -I"$(GCCPATH)/lib/gcc/rx-elf/$(GCCVER)/include"
CC_SYMBOLS = -DCPPAPP -DARDUINO=100 -DGRSAKURA -D__RX600__ -D__RX_LITTLE_ENDIAN__=1 -D__T4__

INCLUDE_PATHS += -I. -I./gr_common $(SYS_INCLUDES) $(USER_INCLUDES)

LD_FLAGS = $(CPU) -Wl,-M=./gr_build/$(PROJECT).map -nostartfiles -Wl,-e_PowerON_Reset
LINKER_SCRIPT = ./gr_common/linker_script_bin.ld
LIBRARY_PATHS = -L"$(GCCPATH)rx-elf/lib/64-bit-double" -L"$(GCCPATH)lib/gcc/rx-elf/$(GCCVER)/64-bit-double"
LIBRARIES = -Wl,--start-group -lm -lc -lgcc -lstdc++ -lnosys -lsim -Wl,--end-group -nostartfiles -Wl,-e_PowerON_Reset -Wl,-S -nostdlib -Wl,--no-flag-mismatch-warnings

.PHONY: all clean lst size

all: $(PROJECT).bin ./gr_build/$(PROJECT).hex size

clean:
	rm -f $(PROJECT).bin ./gr_build/$(PROJECT).elf ./gr_build/$(PROJECT).hex ./gr_build/$(PROJECT).map ./gr_build/$(PROJECT).lst $(DEPS)
	rm -f $(COMMON_OBJECTS) $(COMMON_OBJECTS:.o=.d) $(USER_OBJECTS)

.asm.o:
	$(CC) -Wa,--gdwarf2 -DCPPAPP -c -x assembler-with-cpp $< -o $@
.s.o:
	$(CC) -Wa,--gdwarf2 -DCPPAPP -c -x assembler-with-cpp $< -o $@
.S.o:
	$(CC) -Wa,--gdwarf2 -DCPPAPP -c -x assembler-with-cpp $< -o $@

.c.o:
	$(CC) -std=gnu99 $(CC_FLAGS) -c $(CC_SYMBOLS) $(INCLUDE_PATHS) -x c -o $@ $<

.cpp.o:
	$(CPP) -std=gnu++11 $(CC_FLAGS) -c $(CC_SYMBOLS) $(INCLUDE_PATHS) -x c++ -o $@ $<

.cc.o:
	$(CPP) -std=gnu++11 $(CC_FLAGS) -c $(CC_SYMBOLS) $(INCLUDE_PATHS) -x c++ -o $@ $<

.c.s:
	$(CC) $(CPU) -S $(CC_SYMBOLS) $(INCLUDE_PATHS) -x c -o $@ $<

.cpp.s:
	$(CPP) $(CC_FLAGS) -S $(CC_SYMBOLS) $(INCLUDE_PATHS) -x c++ -o $@ $<


SYS_LIB = ./gr_common/gr_common.a

ifneq (,$(findstring $(SYS_LIB),$(COMMON_LIBRARY)))
./gr_build/$(PROJECT).elf: $(USER_OBJECTS)
	$(LD) $(LD_FLAGS) -T$(LINKER_SCRIPT) $(LIBRARY_PATHS) $(USER_OBJECTS) $(USER_LIBRARY) -Wl,--whole-archive $(SYS_LIB) -Wl,--no-whole-archive $(LIBRARIES) -o ./gr_build/$(PROJECT).elf
#	rm -f $(COMMON_OBJECTS) $(COMMON_OBJECTS:.o=.d) $(USER_OBJECTS)

else
./gr_build/$(PROJECT).elf: $(USER_OBJECTS) $(COMMON_OBJECTS)
	$(AR) rcs $(SYS_LIB) $(COMMON_OBJECTS)
	$(LD) $(LD_FLAGS) -T$(LINKER_SCRIPT) $(LIBRARY_PATHS) $(USER_OBJECTS) $(USER_LIBRARY) -Wl,--whole-archive $(SYS_LIB) -Wl,--no-whole-archive $(LIBRARIES) -o ./gr_build/$(PROJECT).elf
#	rm -f $(COMMON_OBJECTS) $(COMMON_OBJECTS:.o=.d) $(USER_OBJECTS)

endif

$(PROJECT).bin: ./gr_build/$(PROJECT).elf
	$(OBJCOPY) -O binary $< $@

./gr_build/$(PROJECT).hex: ./gr_build/$(PROJECT).elf
	@$(OBJCOPY) -O ihex $< $@

./gr_build/$(PROJECT).lst: ./gr_build/$(PROJECT).elf
	@$(OBJDUMP) -Sdh $< > $@

lst: ./gr_build/$(PROJECT).lst

size: ./gr_build/$(PROJECT).elf
	$(SIZE) ./gr_build/$(PROJECT).elf

#DEPS = $(USER_OBJECTS) $(LIB_OBJECTSS:.o=.d)
#-include $(DEPS)

