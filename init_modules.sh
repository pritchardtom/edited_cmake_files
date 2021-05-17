#!/bin/bash
module purge
module load compiler/gnu/4
module load mpi/openmpi/3.1.1
module load fftw/3.3.8
module load cfitsio/3.450
module load boost/1.69.0
module load opencv/3.4.5
module load IDL/8.7.3

export IDL_DIR=/apps/local/languages/IDL/8.7.3/idl87
