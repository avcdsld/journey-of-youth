// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Vajragarbha
 * @dev 堅固な信念を持つコントラクト
 */
contract Vajragarbha {
    address public immutable creator;

    /**
     * @dev コンストラクタで作成者を設定
     */
    constructor() {
        creator = msg.sender;
    }

    /**
     * @dev 作成者を取得する関数
     * @return 作成者のアドレス
     */
    function getCreator() public view returns (address) {
        return creator;
    }
}
