// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Anala
 * @dev 終わりなき精進を表すコントラクト
 */
contract Anala {
    /**
     * @dev 再帰的に階乗を計算する関数
     * @param n 計算する数値
     * @return 階乗の結果
     */
    function endlessEffort(uint256 n) public pure returns (uint256) {
        if (n == 0) {
            return 1;
        } else {
            return n * endlessEffort(n - 1);
        }
    }
}
