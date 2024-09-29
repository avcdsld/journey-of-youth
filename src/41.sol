// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "../lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";

/**
 * @title Vajrapani
 * @dev 強力な守護を提供するコントラクト
 */
contract Vajrapani is ReentrancyGuard {
    mapping(address => uint256) public balances;

    /**
     * @dev Etherを預ける関数
     */
    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    /**
     * @dev Etherを引き出す関数（再入性ガード付き）
     * @param amount 引き出す金額
     */
    function withdraw(uint256 amount) public nonReentrant {
        require(balances[msg.sender] >= amount, unicode"残高が不足しています");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }
}
