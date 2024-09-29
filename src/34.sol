// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Sthiraprabha
 * @dev 安定した智慧を提供するコントラクト
 */
contract Sthiraprabha {
    /**
     * @dev 安全に数値を加算する関数
     * @param a 数値1
     * @param b 数値2
     * @return result 加算結果
     */
    function safeAdd(uint256 a, uint256 b) public pure returns (uint256 result) {
        unchecked {
            result = a + b;
        }
        require(result >= a, unicode"オーバーフローが発生しました");
    }
}
