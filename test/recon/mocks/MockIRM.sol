// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {MarketParams, Market} from "src/interfaces/IMorpho.sol";

contract MockIRM {
    uint256 internal _borrowRate;

    function setBorrowRate(uint256 newBorrowRate) external {
        _borrowRate = newBorrowRate;
    }

    function borrowRate(MarketParams memory marketParams, Market memory market) external view returns (uint256) {
        return _borrowRate;
    }
}
