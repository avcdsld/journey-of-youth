// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Sagaramegha
 * @dev 慈悲の心を広げるコントラクト
 */
contract Sagaramegha {
    address public compassionateAddress;

    /**
     * @dev コンストラクタで慈悲の対象となるアドレスを設定
     * @param _address 慈悲を示す相手のアドレス
     */
    constructor(address _address) {
        compassionateAddress = _address;
    }

    /**
     * @dev 慈悲の対象を変更する関数
     * @param _newAddress 新たな慈悲の対象
     */
    function changeCompassion(address _newAddress) public {
        compassionateAddress = _newAddress;
    }
}
