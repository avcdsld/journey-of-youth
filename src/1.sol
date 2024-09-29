// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Megasri
 * @dev 信仰心を表すコントラクト
 */
contract Megasri {
    bool public faith;

    constructor(bool _initialFaith) {
        faith = _initialFaith;
    }

    /**
     * @dev 信仰心を確認する関数
     * @return 現在の信仰心の状態
     */
    function checkFaith() public view returns (bool) {
        return faith;
    }

    /**
     * @dev 信仰心を深める関数
     */
    function strengthenFaith() public {
        faith = true;
    }

    /**
     * @dev 信仰心を試される関数
     */
    function challengeFaith() public {
        faith = false;
    }
}
