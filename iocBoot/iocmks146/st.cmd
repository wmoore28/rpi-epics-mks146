#!../../bin/linux-arm/mks146
################################################################################
< envPaths
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}/proto")
################################################################################
cd "${TOP}"

## Register all support components
dbLoadDatabase("dbd/mks146.dbd")
mks146_registerRecordDeviceDriver(pdbbase)

## Port Config
drvAsynSerialPortConfigure("USB0", "/dev/ttyUSB0", 0,0,0)
asynSetOption("USB0", -1, "baud",   "9600")
asynSetOption("USB0", -1, "bits",   "7")
asynSetOption("USB0", -1, "parity", "even")
asynSetOption("USB0", -1, "stop",   "1")
# debugging
asynSetTraceMask("USB0", -1, 0x9)
asynSetTraceIOMask("USB0", -1, 0x2)

## Load record instances
dbLoadRecords("db/mks146.db", "P=BNS12:,R=MKS:,PORT=USB0")

cd "${TOP}/iocBoot/${IOC}"
# dump pv list
dbl > ${IOC}.pvlist
iocInit

