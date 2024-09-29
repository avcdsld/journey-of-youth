// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title HelperLibrary
 * @dev 再利用可能な関数を持つライブラリ
 */
library HelperLibrary {
    function addTwo(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }
}

/**
 * @title Kalyanamitra
 * @dev HelperLibraryを利用するコントラクト
 */
contract Kalyanamitra {
    using HelperLibrary for uint256;

    /**
     * @dev 良き友と協力して計算を行う関数
     * @param x 数値1
     * @param y 数値2
     * @return 計算結果
     */
    function collaborate(uint256 x, uint256 y) public pure returns (uint256) {
        return x.addTwo(y);
    }
}
