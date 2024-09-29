// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Kalyanakari
 * @dev 善い行いを記録するコントラクト
 */
contract Kalyanakari {
    mapping(address => uint256) public goodDeeds;

    /**
     * @dev 善い行いを追加する関数
     * @param _deeds 善行の数
     */
    function addGoodDeed(uint256 _deeds) public {
        goodDeeds[msg.sender] += _deeds;
    }

    /**
     * @dev 特定のアドレスの善行を取得する関数
     * @param _address アドレス
     * @return 善行の合計
     */
    function getGoodDeeds(address _address) public view returns (uint256) {
        return goodDeeds[_address];
    }
}
