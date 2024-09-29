// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Akshayamati
 * @dev 無限の心を持つコントラクト
 */
contract Akshayamati {
    uint256[] public infiniteMind;

    /**
     * @dev 無限の心に値を追加する関数
     * @param value 追加する値
     */
    function expandMind(uint256 value) public {
        infiniteMind.push(value);
    }
}
