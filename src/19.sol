// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Manjushri
 * @dev 鋭い智慧でエラーを検知するコントラクト
 */
contract Manjushri {
    /**
     * @dev 数値が偶数であることを確認する関数
     * @param _number チェックする数値
     * @return チェック結果のメッセージ
     */
    function checkEven(uint256 _number) public pure returns (string memory) {
        require(_number % 2 == 0, unicode"数値は偶数でなければなりません");
        assert(_number != 0);
        return unicode"数値は有効な偶数です";
    }
}
