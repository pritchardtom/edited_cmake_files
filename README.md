# Install SSTRED on Sunbird

I installed everything under the following folder:

```
$HOME/help_users/dato/sstred_install
```

This shouldn't matter, but I thought I would mention it, as you will likely install to a different location and might need to tweak the below slightly.

## Installation Instructions

Some of these might not be necessary for you, especially if you already have the `idl` directory elsewhere, but here's what I did:

```bash

# cd into install directory, create idl folder, download redux from git, and create the build directory:
cd $HOME/help_users/dato/sstred_install
mkdir -p idl/dlm/x86_64
git clone https://github.com/ISP-SST/redux
mkdir -p redux/build

# download the edited cmake files, and overwrite the default ones in redux/cmake:
git clone https://github.com/pritchardtom/edited_cmake_files.git
mv edited_cmake_files/*.cmake redux/cmake/

# unsure if modules need to be loaded, but worth executing this just in case
# init_modules.sh also sets IDL_DIR variable to ensure redux uses correct version (8.7.3)
source edited_cmake_files/init_modules.sh

# now let's build it:
cd redux/build/
cmake ../ -DIDL_DLM_DIR:STRING=$HOME/help_users/dato/sstred_install/idl/dlm/x86_64 # this will different for you, so edit this to correct idl location.

# now let's install it:
cd src/dlm/
make install
```

## `idl/dlm/x86_64` Directory Post-Install

After everything finished, the contents of the `idl` directory looked like this:

```
libana.dlm  libana.so  libgridmatch.dlm  libgridmatch.so  libmomfbd.dlm  libmomfbd.so  librdx.dlm  librdx.so
```

Hopefully this is correct, and the above instructions work without issue for you.  Any problems, please let me know.
