CC:=gcc
CFLAGS:=`pkg-config --cflags libftdi1`
LDFLAGS:=`pkg-config --libs libftdi1`
SOURCE:=ft245-usb-relay.c
EXECUTABLE:=usb-relay

all:$(EXECUTABLE)

$(EXECUTABLE):$(SOURCE)
	$(CC) $< $(LDFLAGS) $(CFLAGS) -o $@

install:$(EXECUTABLE)
	cp $(EXECUTABLE) /usr/local/bin/

uninstall:
	rm -rf /usr/local/bin/$(EXECUTABLE)

clean:
	rm -rf $(EXECUTABLE)
