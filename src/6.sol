// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title OceanWisdom
 * @dev 深遠な智慧を提供するライブラリ
 */
library OceanWisdom {
    /**
     * @dev 2つの数値を掛け合わせる関数
     * @param a 数値1
     * @param b 数値2
     * @return 計算結果
     */
    function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }
}

/**
 * @title Samudramati
 * @dev 深遠な智慧を利用するコントラクト
 */
contract Samudramati {
    using OceanWisdom for uint256;

    /**
     * @dev 深遠な計算を行う関数
     * @param x 数値1
     * @param y 数値2
     * @return 計算結果
     */
    function profoundCalculation(uint256 x, uint256 y) public pure returns (uint256) {
        return x.multiply(y);
    }
}
