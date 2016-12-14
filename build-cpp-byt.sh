#!/bin/bash

cp ../blobs/soc/intel/byt/vbt.bin CorebootPayloadPkg/vbt.bin

cp ../blobs/soc/intel/byt/IntelBytGopDriver_1011.efi CorebootPayloadPkg/IntelGopDriver.efi

. edksetup.sh; build -a IA32 -a X64 -p CorebootPayloadPkg/CorebootPayloadPkgIa32X64.dsc -b RELEASE -t GCC5 -n 4

cp Build/CorebootPayloadPkgX64/RELEASE_GCC5/FV/UEFIPAYLOAD.fd ../UEFIPAYLOAD-byt.fd

rm -rf Build

exit 0
