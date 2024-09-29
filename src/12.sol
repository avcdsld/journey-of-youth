// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Prabhasa
 * @dev 智慧の光を広めるコントラクト
 */
contract Prabhasa {
    event LightOfWisdom(address indexed sender, string message);

    /**
     * @dev 智慧の光を放つ関数
     * @param _message メッセージ
     */
    function emitLight(string memory _message) public {
        emit LightOfWisdom(msg.sender, _message);
    }
}
