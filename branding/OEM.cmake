MESSAGE(STATUS "USING STACK THEME: " ${OEM_THEME_DIR})

set( APPLICATION_SHORTNAME  "stack" )
set( APPLICATION_NAME       "STACK" )
set( APPLICATION_EXECUTABLE "stack"        )
set( APPLICATION_DOMAIN     "transip.nl/stack"          )
set( APPLICATION_VENDOR     "TransIP"     )
set( APPLICATION_UPDATE_URL "https://filehosting-client.transip.nl/stack/update" CACHE string "URL for updater" )
set( APPLICATION_ICON_NAME  "stack" )
set( APPLICATION_SERVER_URL "" CACHE STRING "URL for the server to use. If entered the server can only connect to this instance" )
set( APPLICATION_VIRTUALFILE_SUFFIX "stack" CACHE STRING "Virtual file suffix (not including the .)")
set( APPLICATION_REV_DOMAIN "nl.transip.stack" )

set( LINUX_PACKAGE_SHORTNAME "stack" )
set( LINUX_APPLICATION_ID   "nl.transip.desktopclient.stack" )

set( THEME_CLASS            "StackTheme" )
set( THEME_INCLUDE          "${OEM_THEME_DIR}/stacktheme.h" )
set( WIN_SETUP_BITMAP_PATH  "${OEM_THEME_DIR}/installer/nsi" )
set( MAC_INSTALLER_BACKGROUND_FILE "${OEM_THEME_DIR}/installer/osx/installer-background.png")

option( WITH_PROVIDERS "Build with providers list" OFF )

#set( APPLICATION_LICENSE    "${OEM_THEME_DIR}/license.txt" )

set( MSI_UPGRADE_CODE "bbfcfeef-c883-4987-a077-cf81dfaa8044")
