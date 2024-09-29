// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Prabhaketu
 * @dev 光を掲げるコントラクト
 */
contract Prabhaketu {
    event LightRaised(address indexed sender, uint256 intensity);

    /**
     * @dev 光を掲げる関数
     * @param _intensity 光の強さ
     */
    function raiseLight(uint256 _intensity) public {
        emit LightRaised(msg.sender, _intensity);
    }
}
