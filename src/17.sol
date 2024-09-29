// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Samantanetra
 * @dev 全てを見通す智慧を持つコントラクト
 */
contract Samantanetra {
    /**
     * @dev コントラクトのアドレスを取得する関数
     * @return コントラクトのアドレス
     */
    function getContractAddress() public view returns (address) {
        return address(this);
    }
}
