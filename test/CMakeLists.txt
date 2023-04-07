include(FetchContent)

message("-- Enabling testing")
enable_testing()

# Get Catch2 for unit testing
# Look for an installed version of Catch2
find_package(Catch2 CONFIG)

# If Catch2 is not installed, download it
if(NOT ${Catch2_FOUND})
    FetchContent_Declare(
        Catch2
        GIT_REPOSITORY https://github.com/catchorg/Catch2
        GIT_TAG v3.0.1
    )
    FetchContent_MakeAvailable(Catch2)
endif()

add_subdirectory(cmake_public)
