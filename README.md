### Initialization

```
$ make init TARGET=rpi3 BUILDROOT=/home/user/src/buildroot
```

Possible values for `TARGET`:

- `rpi0`: Raspberry Pi Zero
- `rpi0w`: Raspberry Pi Zero W
- `rpi3`: Raspberry Pi 3

### Buildroot configuration

To change the buildroot configuration, execute:

```
$ cd /home/usr/src/buildroot
$ make menuconfig
$ make
```

To change the kernel configuration, execute:

```
$ cd /home/usr/src/buildroot
$ make linux-menuconfig
$ make
```

The last commands copies changes made to the kernel configuration to the minikube-iso defconfig.

### Saving buildroot configuration changes

To save any buildroot configuration changes made with `make menuconfig`, execute:

```
$ cd /home/usr/src/buildroot
$ make savedefconfig
```

The changes will be reflected in the `configs/recorder_$(TARGET)_defconfig` file.

### Saving kernel configuration changes

To save any kernel configuration changes made with `make linux-menuconfig`, execute:

```
$ cd /home/usr/src/buildroot
$ make linux-savedefconfig
$ cp output/build/linux-xxx/defconfig \
    /home/user/src/recorder-buildroot/board/raspi/recorder/linux-xxx_defconfig
```

### Setting up wifi networks

Place a file called `networks.conf` in the board directory and configure networks in WPA supplicant configuration syntax.

```
$ cat board/raspi/pi0w/networks.conf 
network={
        ssid="foo"
        psk="secret"
}
```

Note: This file will be ignored by git and won't be checked in.
