TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS BELOW HERE

# Build the IOC application
PROD_IOC = mks146

# mks146.dbd will be created and installed
DBD += mks146.dbd

# mks146.dbd will include these files:
mks146_DBD += base.dbd
mks146_DBD += devIocStats.dbd
mks146_DBD += stream.dbd
mks146_DBD += asyn.dbd
mks146_DBD += drvAsynSerialPort.dbd

# mks146_registerRecordDeviceDriver.cpp derives from mks146.dbd
mks146_SRCS += mks146_registerRecordDeviceDriver.cpp

# Build the main IOC entry point where needed
mks146_SRCS_DEFAULT += mks146Main.cpp
mks146_SRCS_vxWorks += -nil-

# Link in the code from support libraries (ORDER MATTERS!!!)
mks146_LIBS += devIocStats
mks146_LIBS += stream
mks146_LIBS += asyn

# Finally link IOC to the EPICS Base libraries
mks146_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD EXTRA GNUMAKE RULES BELOW HERE

