// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Middleware} from "../src/Middleware.sol";

contract MiddlewareTest is Test {
    Middleware public middleware;

    function setUp() public {
        middleware = new Middleware();
        middleware.setNumber(0);
    }

    function test_Increment() public {
        middleware.increment();
        assertEq(middleware.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        middleware.setNumber(x);
        assertEq(middleware.number(), x);
    }
}
