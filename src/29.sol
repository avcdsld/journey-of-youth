// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title SamantanetraKumara
 * @dev 全視野の智慧を深めるコントラクト
 */
contract SamantanetraKumara {
    /**
     * @dev グローバル変数を利用して現在のブロック情報を取得する関数
     * @return 現在のブロック番号とタイムスタンプ
     */
    function getCurrentBlockInfo() public view returns (uint256, uint256) {
        return (block.number, block.timestamp);
    }
}
