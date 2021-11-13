pragma solidity ^0.7.6;

import "ds-test/test.sol";

import "./Testnft.sol";

contract TestnftTest is DSTest {
    Testnft testnft;

    function setUp() public {
        testnft = new Testnft();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
