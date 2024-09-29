// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Punyasambhava
 * @dev 功徳を蓄積するコントラクト
 */
contract Punyasambhava {
    mapping(address => uint256) public merits;

    /**
     * @dev 功徳を追加する関数
     * @param _amount 追加する功徳の量
     */
    function accumulateMerit(uint256 _amount) public {
        merits[msg.sender] += _amount;
    }

    /**
     * @dev 特定のアドレスの功徳を確認する関数
     * @param _address アドレス
     * @return 功徳の総量
     */
    function checkMerit(address _address) public view returns (uint256) {
        return merits[_address];
    }
}
