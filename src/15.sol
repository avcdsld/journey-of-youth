// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title TreasureInterface
 * @dev 宝の如き心を表すインターフェース
 */
interface TreasureInterface {
    function revealTreasure() external view returns (string memory);
}

/**
 * @title Ratnagarbha
 * @dev TreasureInterfaceを実装するコントラクト
 */
contract Ratnagarbha is TreasureInterface {
    /**
     * @dev 宝を明かす関数
     * @return 宝のメッセージ
     */
    function revealTreasure() external pure override returns (string memory) {
        return unicode"無限の宝がここにあります";
    }
}
