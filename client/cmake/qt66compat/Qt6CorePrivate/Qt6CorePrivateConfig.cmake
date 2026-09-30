# Compatibility shim for Qt < 6.9: there is no separate Qt6CorePrivate package,
# Qt6::CorePrivate is created together with Qt6::Core.
if(NOT TARGET Qt6::CorePrivate)
    find_package(Qt6 CONFIG REQUIRED COMPONENTS Core)
endif()
if(TARGET Qt6::CorePrivate)
    set(Qt6CorePrivate_FOUND TRUE)
else()
    set(Qt6CorePrivate_FOUND FALSE)
    set(Qt6CorePrivate_NOT_FOUND_MESSAGE "Qt6::CorePrivate target is not available")
endif()
