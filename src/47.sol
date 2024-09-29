// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Kshitigarbha
 * @dev 地の如き慈悲を持つコントラクト
 */
contract Kshitigarbha {
    struct CompassionRecord {
        address benefactor;
        uint256 amount;
    }

    CompassionRecord[] public compassionRecords;

    /**
     * @dev 慈悲の行為を記録する関数
     * @param _amount 金額
     */
    function recordCompassion(uint256 _amount) public {
        compassionRecords.push(CompassionRecord({
            benefactor: msg.sender,
            amount: _amount
        }));
    }
}
