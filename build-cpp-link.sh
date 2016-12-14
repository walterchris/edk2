#!/bin/bash

cp ../blobs/mainboard/google/link/vbt.bin CorebootPayloadPkg/vbt.bin

cp ../blobs/soc/intel/ivb/IntelIvbGopDriver_1030.efi CorebootPayloadPkg/IntelGopDriver.efi

. edksetup.sh; build -a IA32 -a X64 -p CorebootPayloadPkg/CorebootPayloadPkgIa32X64.dsc -b RELEASE -t GCC5 -n 4

cp Build/CorebootPayloadPkgX64/RELEASE_GCC5/FV/UEFIPAYLOAD.fd ../UEFIPAYLOAD-link.fd

rm -rf Build

exit 0
