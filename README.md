# Install SSTRED on Sunbird

I installed everything under the following folder:

```
$HOME/help_users/dato/sstred_install
```

This shouldn't matter, but I thought I would mention it, as you will likely install to a different location and might need to tweak the below slightly.

## Instructions

Some of these might not be necessary for you, especially if you already have the `idl` directory elsewhere, but here's what I did:

```bash

cd $HOME/help_users/dato/sstred_install
mkdir -p idl/dlm/x86_64
git clone https://github.com/ISP-SST/redux
mkdir -p redux/build

git clone https://github.com/pritchardtom/edited_cmake_files.git
mv edited_cmake_files/*.cmake redux/cmake/
source edited_cmake_files/init_modules.sh

cd redux/build/
cmake ../ -DIDL_DLM_DIR:STRING=$HOME/help_users/dato/sstred_install/idl/dlm/x86_64
cd src/dlm/
make install
```
