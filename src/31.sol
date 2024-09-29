// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Kalyanamati
 * @dev 善い智慧を共有するコントラクト
 */
contract Kalyanamati {
    /**
     * @notice 二つの数値を加算します
     * @dev この関数は純粋関数です
     * @param a 加算する最初の数値
     * @param b 加算する二番目の数値
     * @return sum 二つの数値の合計
     */
    function add(uint256 a, uint256 b) public pure returns (uint256 sum) {
        sum = a + b;
    }
}
