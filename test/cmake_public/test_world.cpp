#include <catch2/catch_test_macros.hpp>

#include <cmake_public/world.hpp>

TEST_CASE("world") {
    SECTION("does_world_work") {
        REQUIRE(cmake_public::call_world() == 4);
    }
}