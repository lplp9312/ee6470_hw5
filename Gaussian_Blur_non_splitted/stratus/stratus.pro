#################################################
# Stratus IDE project file generated;
#################################################
QT       += core

QT       -= gui

CONFIG   += console
CONFIG   -= app_bundle

STRATUSHOME = $$(STRATUS_HOME)
SYSTEMCHOME = $$(SYSTEMC)

TEMPLATE = app
INCLUDEPATH += $${SYSTEMCHOME}/include
INCLUDEPATH += $${SYSTEMCHOME}/include/tlm
INCLUDEPATH += $${STRATUSHOME}/share/stratus/include
INCLUDEPATH += ./bdw_work/wrappers
INCLUDEPATH += ./

SOURCES += \ 
		../main.cpp \ 
		../Testbench.cpp \ 
		../System.cpp \ 
		../GauFilter.cpp \ 

HEADERS += \ 
		../Testbench.h \ 
		../System.h \ 
		../GauFilter.h \ 

OTHER_FILES += \ 
		Makefile \ 
		/home/m109/m109061634/EE6470/hw/ee6470_hw5/Gaussian_Blur_non_splitted/stratus/project.tcl \ 

