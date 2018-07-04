# ----------------------------------------------------------------------
#   Sumary:
# ----------------------------------------------------------------------
FIND_PATH(HELLO_INCLUDE_DIR hello.h /home/zf/Desktop/source/Cmakefind/include)
IF (HELLO_INCLUDE_DIR)
    SET(HELLO_FOUND TRUE)
ENDIF(HELLO_INCLUDE_DIR)
