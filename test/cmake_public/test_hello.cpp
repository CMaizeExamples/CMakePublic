#include <catch2/catch_test_macros.hpp>

#include <cmake_public/hello.hpp>

TEST_CASE("hello") {
    SECTION("does_hello_work") {
        REQUIRE(cmake_public::call_hello() == 3);
    }
}