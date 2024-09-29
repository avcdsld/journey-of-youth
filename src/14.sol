// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Nityapramudita
 * @dev 常なる喜びを伝えるコントラクト
 */
contract Nityapramudita {
    event JoyfulEvent(string message);

    /**
     * @dev 喜びのメッセージを発信する関数
     */
    function spreadJoy() public {
        emit JoyfulEvent(unicode"永遠の歓喜を共有します");
    }
}
