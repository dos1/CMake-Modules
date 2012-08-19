# Try to find allegro 5
#
#  ALLEGRO5_TTF_FOUND - system has allegro5
#  ALLEGRO5_TTF_INCLUDE_DIRS - the allrgo5 include directory
#  ALLEGRO5_TTF_LIBRARIES - Link these to use allegro5
#

FIND_PATH(ALLEGRO5_TTF_INCLUDE_DIR allegro_ttf.h
  HINTS
  $ENV{LUA_DIR}
  PATH_SUFFIXES include/allegro5 include/allegro include
  PATHS
  ~/Library/Frameworks
  /Library/Frameworks
  /usr/local
  /usr
  /sw
  /opt/local
  /opt/csw
  /opt
)

FIND_LIBRARY(ALLEGRO5_TTF_LIBRARY
  NAMES allegro_ttf
  HINTS
  $ENV{ALLEGRO5_DIR}
  PATH_SUFFIXES lib64 lib
  PATHS
  ~/Library/Frameworks
  /Library/Frameworks
  /usr/local
  /usr
  /sw
  /opt/local
  /opt/csw
  /opt
)

MESSAGE(STATUS "${ALLEGRO5_TTF_LIBRARY}")

IF(ALLEGRO5_TTF_LIBRARY)
  SET(ALLEGRO5_TTF_LIBRARIES "${ALLEGRO5_TTF_LIBRARY}" CACHE STRING "Allegro5 Font Libraries")
  SET(ALLEGRO5_TTF_INCLUDE_DIRS "${ALLEGRO5_TTF_INCLUDE_DIR}" CACHE STRING "Allegro5 Font Include Dirs")
  SET(ALLEGRO5_TTF_FOUND TRUE)
ENDIF(ALLEGRO5_TTF_LIBRARY)

MARK_AS_ADVANCED(ALLEGRO5_TTF_INCLUDE_DIR ALLEGRO5_TTF_INCLUDE_DIRS ALLEGRO5_TTF_LIBRARIES ALLEGRO5_TTF_LIBRARY)
