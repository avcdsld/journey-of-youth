// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Amoghasiddhi
 * @dev 無駄のない成就を目指すコントラクト
 */
contract Amoghasiddhi {
    /**
     * @dev 数値の乗算を効率的に行う関数
     * @param a 数値1
     * @param b 数値2
     * @return 結果
     */
    function efficientMultiply(uint256 a, uint256 b) public pure returns (uint256) {
        unchecked {
            return a * b;
        }
    }
}
