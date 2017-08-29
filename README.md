# lightdm-webkit2-greeter
[![Latest Release](https://img.shields.io/github/release/Antergos/lightdm-webkit2-greeter.svg?style=flat-square)](https://github.com/Antergos/lightdm-webkit2-greeter/releases)     [![Coverity Scan Build Status](https://img.shields.io/coverity/scan/6871.svg?style=flat-square)](https://scan.coverity.com/projects/antergos-lightdm-webkit2-greeter)

## Install It

#### Official Distro Packages
* ![antergos](https://dl.dropboxusercontent.com/u/60521097/logo-square26x26.png)&nbsp; `sudo pacman -S lightdm-webkit2-greeter`

#### Unofficial Distro Packages
* ![arch](https://dl.dropboxusercontent.com/u/60521097/archlogo26x26.png)&nbsp; `yaourt -S lightdm-webkit2-greeter`
* ![fedora](https://dl.dropboxusercontent.com/u/60521097/fedora-logo.png)&nbsp; [OBS Repo](https://software.opensuse.org/download.html?project=home:antergos&package=lightdm-webkit2-greeter)
* ![openSUSE](https://dl.dropboxusercontent.com/u/60521097/Geeko-button-bling7.png)&nbsp; [1 Click Install](https://software.opensuse.org/ymp/home:antergos/openSUSE_Leap_42.1/lightdm-webkit2-greeter.ymp?base=openSUSE%3ALeap%3A42.1&query=lightdm-webkit2-greeter) &nbsp;|&nbsp; [OBS Repo](https://software.opensuse.org/download.html?project=home:antergos&package=lightdm-webkit2-greeter)

## Build It

#### Dependencies
|                   | ![arch](https://dl.dropboxusercontent.com/u/60521097/archlogo26x26.png) | ![debian](https://dl.dropboxusercontent.com/u/60521097/openlogo-nd-25.png) &nbsp;&nbsp; ![ubuntu](https://dl.dropboxusercontent.com/u/60521097/ubuntu_orange_hex.png) | ![fedora](https://dl.dropboxusercontent.com/u/60521097/fedora-logo.png) | ![openSUSE](https://dl.dropboxusercontent.com/u/60521097/Geeko-button-bling7.png) | 
|-----------------------|-------------------------------------------------------------------------|----------------------------------------------------------------------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------------|--------------------------------------------------------------------------------|
|**liblightdm-gobject-1** |lightdm  |liblightdm-gobject-dev | lightdm-gobject-devel | liblightdm-gobject-1-0 |
|**gtk+ 3**               |gtk3     |libgtk-3-0             | gtk3                  | gtk3                   |
|**webkit2gtk-4.0**       |webkitgtk|libwebkit2gtk-4.0-dev  | webkitgtk4            | webkit2gtk3            |
|**dbus-glib-1**         |dbus-glib|libdbus-glib-1-dev     | dbus-glib             | dbus-1-glib            |

#### How To Build
The process is slightly different depending on how you obtain the source.

##### Use Git To Clone This Repo
```sh
cd /tmp
git clone https://github.com/Antergos/lightdm-webkit2-greeter.git greeter
cd greeter
git submodule init && git submodule update
./autogen.sh --prefix=/usr
make
```

##### Download Repo In Archive Format (tar.gz, zip, etc)
```sh
cd /tmp
wget https://github.com/Antergos/lightdm-webkit2-greeter/archive/release/latest.zip
unzip latest.zip
cd lightdm**/themes
rm -rf antergos
wget https://github.com/Antergos/lightdm-webkit-theme-antergos/archive/latest.zip
unzip latest.zip
mv lightdm** antergos
cd ..
./autogen.sh --prefix=/usr
make
```

#### How To Install
```sh
cd themes/antergos
sed -i 's|/usr/share/|/usr/share/lightdm-webkit/themes/|g' index.html
wget http://antergos.com/antergos-wallpapers-0.6.zip
unzip antergos**.zip
sudo make install --prefix=/usr
sudo cp -R antergos-wa** /usr/share/lightdm-webkit/themes/antergos/wallpapers
```

## Theme JavaScript API:
The greeter exposes a JavaScript API to greeter themes which they must use to interact with the greeter (in order to facilitate the user login process). The [API Documentation](https://antergos.com/wiki/development/lightdm-webkit2-greeter-theme-javascript-api/) is a W.I.P. 
