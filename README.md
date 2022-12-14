# MySQL Router Snap
This repository contains the packaging metadata for creating a snap of MySQL Router built from the official Ubuntu repositories.  For more information on snaps, visit [snapcraft.io](https://snapcraft.io/). 

## Installing the Snap
The snap can be installed directly from the Stap Store.  Follow the link in the badge below for more information.
<br>

[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/mysql-router)


## Building the Snap
The steps outlined below are based on the assumption that you are building the snap with the latest LTS of Ubuntu.  If you are using another version of Ubuntu or another operating system, the process may be different.

### Clone Repository
```bash
git clone git@github.com:canonical/mysql-router-snap.git
cd mysql-router-snap
```
### Installing and Configuring Prerequisites
```bash
sudo snap install snapcraft
sudo snap install lxd
sudo lxd init --auto
```
### Packing and Installing the Snap
```bash
snapcraft pack
sudo snap install ./mysql-router*.charm --devmode
```
## License
The Mysql Router Snap is free software, distributed under the Apache
Software License, version 2.0. See
[LICENSE](https://github.com/canonical/mysql-router-snap/blob/8.0/stable/LICENSE)
for more information.