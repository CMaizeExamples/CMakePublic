
# ---------- test_cmake_public ----------

add_executable(test_cmake_public)
add_test(NAME test_cmake_public COMMAND test_cmake_public)

# Add source files to be included in the library
target_sources(test_cmake_public
    PRIVATE
        "${CMAKE_CURRENT_LIST_DIR}/test_cmake_public.cpp"
)

target_link_libraries(test_cmake_public 
    Catch2::Catch2WithMain
    CMakePublic::hello
    CMakePublic::world
)

# ---------- test_hello ----------

add_executable(test_hello)
add_test(NAME test_hello COMMAND test_hello)

# Add source files to be included in the library
target_sources(test_hello
    PRIVATE
        "${CMAKE_CURRENT_LIST_DIR}/test_hello.cpp"
)

target_link_libraries(test_hello 
    Catch2::Catch2WithMain
    CMakePublic::hello
)

# ---------- test_world ----------

add_executable(test_world)
add_test(NAME test_world COMMAND test_world)

# Add source files to be included in the library
target_sources(test_world
    PRIVATE
        "${CMAKE_CURRENT_LIST_DIR}/test_world.cpp"
)

target_link_libraries(test_world 
    Catch2::Catch2WithMain
    CMakePublic::world
)