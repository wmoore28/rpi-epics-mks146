# Example EPICS application for MKS 146

Example EPICS application for MKS 146, using Raspberry Pi.

## Usage
Make sure EPICS environmental variables are set (EPICS_BASE, etc).  Clone onto 
pi and run make to compile.

In one terminal, run the EPICS IOC:
```
$> cd iocBoot/iocmks146
$> ./st.cmd
```

In another terminal, query EPICS process variables (PVs):
```
$> caget BNS12:MKS:CH4:FLOW
BNS12:MKS:CH4:FLOW             3.9
```

## Notes
When modifying the .db or .proto files in Db/, you must run 'make' to install 
them in the top-level directories.  Then re-run the IOC to load the changes. 

## References
- EPICS Base: https://epics.anl.gov/base/R3-14/12.php
- EPICS Record Reference Manual: https://wiki-ext.aps.anl.gov/epics/index.php/RRM_3-14
- StreamDevice: http://epics.web.psi.ch/software/streamdevice/doc/index.html

For EPICS install on Raspberry Pi, see also: https://github.com/wmoore28/rpi-epics-installer

