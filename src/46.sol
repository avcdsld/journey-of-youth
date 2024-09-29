// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title AvalokiteshvaraEnhanced
 * @dev 慈悲深いエラーメッセージを提供するコントラクト
 */
contract AvalokiteshvaraEnhanced {
    /**
     * @dev 慈悲の行為を行う関数
     * @param amount 金額
     */
    function actOfCompassion(uint256 amount) public pure {
        require(amount > 0, unicode"優しさを示すには正の金額が必要です");
    }
}
