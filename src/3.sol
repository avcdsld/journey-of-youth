// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Supratisthita
 * @dev 不動の心を持つコントラクト
 */
contract Supratisthita {
    string public constant unwaveringMind = unicode"不動の心";

    /**
     * @dev 不動の心を取得する関数
     * @return 不動の心のメッセージ
     */
    function getUnwaveringMind() public pure returns (string memory) {
        return unwaveringMind;
    }
}
