# ---------- hello Component ----------

set(component_name hello)
add_library(${component_name})
add_library(${PROJECT_NAME}::${component_name} ALIAS ${component_name})

# Identify the source files for the target
target_sources(
    ${component_name}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/hello.cpp
)

# Set include directories for the target, both during the build and installation
target_include_directories(
    ${component_name}
    PUBLIC
        $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

# Install the given component
install(
    TARGETS ${component_name}
    EXPORT ${component_name}Config
    ARCHIVE
        COMPONENT ${component_name}
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/${PROJECT_NAME}
    LIBRARY
        COMPONENT ${component_name}
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/${PROJECT_NAME}
    RUNTIME
        COMPONENT ${component_name}
        DESTINATION ${CMAKE_INSTALL_BINDIR}/${PROJECT_NAME}
)

# Install the include directory
install(
    DIRECTORY "${PROJECT_SOURCE_DIR}/include/"
    DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}"
    USE_SOURCE_PERMISSIONS
)

# Install the *Config.cmake file so find_package() can find the target
install(
    EXPORT ${component_name}Config
    NAMESPACE ${PROJECT_NAME}::
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/${PROJECT_NAME}/cmake
)


# ---------- world Component ----------

set(component_name world)

add_library(${component_name})
add_library(${PROJECT_NAME}::${component_name} ALIAS ${component_name})

# Identify the source files for the target
target_sources(
    ${component_name}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/world.cpp
)

# Set include directories for the target, both during the build and installation
target_include_directories(
    ${component_name}
    PUBLIC
        $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

# Install the given component
install(
    TARGETS ${component_name}
    EXPORT ${component_name}Config
    ARCHIVE
        COMPONENT ${component_name}
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/${PROJECT_NAME}
    LIBRARY
        COMPONENT ${component_name}
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/${PROJECT_NAME}
    RUNTIME
        COMPONENT ${component_name}
        DESTINATION ${CMAKE_INSTALL_BINDIR}/${PROJECT_NAME}
)

# Install the include directory
install(
    DIRECTORY "${PROJECT_SOURCE_DIR}/include/"
    DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}"
    USE_SOURCE_PERMISSIONS
)

# Install the *Config.cmake file so find_package() can find the target
install(
    EXPORT ${component_name}Config
    NAMESPACE ${PROJECT_NAME}::
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/${PROJECT_NAME}/cmake
)
