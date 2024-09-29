// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Muktaka
 * @dev 執着からの解放を表すコントラクト
 */
contract Muktaka {
    mapping(address => uint256) public attachments;

    /**
     * @dev 所有物を追加する関数
     * @param _amount 所有物の量
     */
    function addAttachment(uint256 _amount) public {
        attachments[msg.sender] += _amount;
    }

    /**
     * @dev 執着を手放す関数
     */
    function releaseAttachments() public {
        delete attachments[msg.sender];
    }
}
