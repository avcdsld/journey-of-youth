// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Avalokiteshvara
 * @dev 慈悲と救済を提供するコントラクト
 */
contract Avalokiteshvara {
    event HelpReceived(address sender, uint256 amount, string message);

    /**
     * @dev フォールバック関数：予期せぬ呼び出しを受け取る
     */
    fallback() external payable {
        emit HelpReceived(msg.sender, msg.value, unicode"あなたの助けに応えます");
    }

    /**
     * @dev Etherを受け取る関数
     */
    receive() external payable {
        emit HelpReceived(msg.sender, msg.value, unicode"あなたの慈悲を受け取りました");
    }
}
