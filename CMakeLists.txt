cmake_minimum_required(VERSION 3.13.4)
project(CMakePublic VERSION 1.0.0 LANGUAGES CXX)

include(GNUInstallDirs)

# Add src directory to build libraries
add_subdirectory(src)

# Create *Config.cmake file for the project, including all components
configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake/${PROJECT_NAME}Config.cmake.in
    ${PROJECT_NAME}Config.cmake
    @ONLY
)

# Install the *Config.cmake file
install(FILES "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/${PROJECT_NAME}/cmake)

# Include CTest in the top-most CMakeLists.txt and add the project tests
include(CTest)
add_subdirectory(test)
