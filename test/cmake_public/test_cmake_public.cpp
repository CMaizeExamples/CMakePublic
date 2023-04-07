#include <catch2/catch_test_macros.hpp>

#include <cmake_public/cmake_public.hpp>

TEST_CASE("cmake_public") {
    SECTION("does_cmake_public_include_work") {
        REQUIRE(cmake_public::call_hello() + cmake_public::call_world() == 7);
    }
}