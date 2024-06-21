# Copyright 2020 Free Software Foundation, Inc.
#
# This file is part of GNU Radio
#
# SPDX-License-Identifier: GPL-3.0-or-later
#

########################################################################
# Check if there is C++ code at all
########################################################################
if(NOT sdrSmoke_sources)
    MESSAGE(STATUS "No C++ sources... skipping python bindings")
    return()
endif(NOT sdrSmoke_sources)

########################################################################
# Check for pygccxml
########################################################################
GR_PYTHON_CHECK_MODULE_RAW(
    "pygccxml"
    "import pygccxml"
    PYGCCXML_FOUND
    )

include(GrPybind)

########################################################################
# Python Bindings
########################################################################

list(APPEND sdrSmoke_python_files
    multDivSelect_python.cc python_bindings.cc)

GR_PYBIND_MAKE_OOT(sdrSmoke
   ../../..
   gr::sdrSmoke
   "${sdrSmoke_python_files}")

# copy bindings extension for use in QA test module
add_custom_command(TARGET sdrSmoke_python POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:sdrSmoke_python>
    ${PROJECT_BINARY_DIR}/test_modules/gnuradio/sdrSmoke/
)

install(TARGETS sdrSmoke_python DESTINATION ${GR_PYTHON_DIR}/gnuradio/sdrSmoke COMPONENT pythonapi)
