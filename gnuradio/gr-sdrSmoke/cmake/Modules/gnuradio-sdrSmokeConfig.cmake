find_package(PkgConfig)

PKG_CHECK_MODULES(PC_GR_SDRSMOKE gnuradio-sdrSmoke)

FIND_PATH(
    GR_SDRSMOKE_INCLUDE_DIRS
    NAMES gnuradio/sdrSmoke/api.h
    HINTS $ENV{SDRSMOKE_DIR}/include
        ${PC_SDRSMOKE_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    GR_SDRSMOKE_LIBRARIES
    NAMES gnuradio-sdrSmoke
    HINTS $ENV{SDRSMOKE_DIR}/lib
        ${PC_SDRSMOKE_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/gnuradio-sdrSmokeTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GR_SDRSMOKE DEFAULT_MSG GR_SDRSMOKE_LIBRARIES GR_SDRSMOKE_INCLUDE_DIRS)
MARK_AS_ADVANCED(GR_SDRSMOKE_LIBRARIES GR_SDRSMOKE_INCLUDE_DIRS)
