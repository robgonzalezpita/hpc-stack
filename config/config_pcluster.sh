#!/bin/bash
  
# Compiler/MPI combination
python_ver=$( python3 --version | cut -d " " -f2 | cut -d. -f1-2 )
export HPC_COMPILER=${HPC_COMPILER:-"intel/2021"}
export HPC_MPI=${HPC_MPI:-"impi/2019.8.254"}
export HPC_PYTHON=${HPC_PYTHON:-"python/${python_ver}"}

# Build options
export USE_SUDO=N
export PKGDIR=pkg
export LOGDIR=log
export OVERWRITE=N
export NTHREADS=4
export MAKE_CHECK=N
export MAKE_VERBOSE=N
export MAKE_CLEAN=N
export DOWNLOAD_ONLY=N
export STACK_EXIT_ON_FAIL=Y
export WGET="wget -nv"

source /scratch1/apps/lmod/lmod/init/bash
