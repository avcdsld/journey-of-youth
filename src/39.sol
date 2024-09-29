// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title ManjushriAdvanced
 * @dev カスタムエラーで鋭い智慧を深めるコントラクト
 */
contract ManjushriAdvanced {
    error NotAnEvenNumber(uint256 providedNumber);

    /**
     * @dev 数値が偶数であることを確認する関数
     * @param _number チェックする数値
     * @return メッセージ
     */
    function checkEven(uint256 _number) public pure returns (string memory) {
        if (_number % 2 != 0) {
            revert NotAnEvenNumber(_number);
        }
        return unicode"数値は有効な偶数です";
    }
}
