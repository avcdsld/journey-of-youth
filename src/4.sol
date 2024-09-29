// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Prabhuta
 * @dev 布施の精神を表すコントラクト
 */
contract Prabhuta {
    /**
     * @dev 布施を受け取る関数
     */
    function receiveAlms() public payable {
        // 受け取ったEtherは特に処理せず保持します
    }

    /**
     * @dev コントラクトの残高を確認する関数
     * @return コントラクトのEther残高
     */
    function checkBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
