// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Vimaladatta
 * @dev 汚れなき心で書かれたクリーンなコードのコントラクト
 */
contract Vimaladatta {
    uint256 private pureValue;

    /**
     * @dev クリーンな値を設定する関数
     * @param _value 設定する値
     */
    function setPureValue(uint256 _value) public {
        pureValue = _value;
    }

    /**
     * @dev クリーンな値を取得する関数
     * @return クリーンな値
     */
    function getPureValue() public view returns (uint256) {
        return pureValue;
    }
}
