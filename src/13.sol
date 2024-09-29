// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Chandraprabha
 * @dev 静寂と明晰さを提供するコントラクト
 */
contract Chandraprabha {
    uint256 private secretKnowledge = 42;

    /**
     * @dev 秘密の智慧を得る関数（状態を変更しない）
     * @return 秘密の数値
     */
    function revealSecret() public view returns (uint256) {
        return secretKnowledge;
    }
}
