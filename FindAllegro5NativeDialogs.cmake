# Try to find allegro 5
#
#  ALLEGRO5_NATIVE_DIALOGS_FOUND - system has allegro5
#  ALLEGRO5_NATIVE_DIALOGS_INCLUDE_DIR - the allrgo5 include directory
#  ALLEGRO5_NATIVE_DIALOGS_LIBRARIES - Link these to use allegro5
#

FIND_PATH(ALLEGRO5_NATIVE_DIALOGS_INCLUDE_DIR allegro5/allegro_dialog.h)

SET(ALLEGRO5_NATIVE_DIALOGS_NAMES ${ALLEGRO5_NATIVE_DIALOGS_NAMES} allegro_dialog allegro_dialog_static liballegro_dialog liballegro_dialog_static)
FIND_LIBRARY(ALLEGRO5_NATIVE_DIALOGS_LIBRARY NAMES ${ALLEGRO5_NATIVE_DIALOGS_NAMES} )

# handle the QUIETLY and REQUIRED arguments and set ALLEGRO5_NATIVE_DIALOGS_FOUND to TRUE if
# all listed variables are TRUE
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(ALLEGRO5_NATIVE_DIALOGS DEFAULT_MSG ALLEGRO5_NATIVE_DIALOGS_LIBRARY ALLEGRO5_NATIVE_DIALOGS_INCLUDE_DIR)

IF(ALLEGRO5_NATIVE_DIALOGS_FOUND)
  SET(ALLEGRO5_NATIVE_DIALOGS_LIBRARIES ${ALLEGRO5_NATIVE_DIALOGS_LIBRARY})
ENDIF(ALLEGRO5_NATIVE_DIALOGS_FOUND)

MARK_AS_ADVANCED(ALLEGRO5_NATIVE_DIALOGS_LIBRARY ALLEGRO5_NATIVE_DIALOGS_INCLUDE_DIR )
