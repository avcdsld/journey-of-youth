// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Suddhadhimukti
 * @dev 純粋な志を持つコントラクト
 */
contract Suddhadhimukti {
    uint256 private totalMeditationTime;

    /**
     * @dev 瞑想時間を追加する関数（状態変更）
     * @param time 追加する時間
     */
    function addMeditationTime(uint256 time) public {
        totalMeditationTime += time;
    }

    /**
     * @dev 総瞑想時間を取得する関数（状態を読む）
     * @return 総瞑想時間
     */
    function getTotalMeditationTime() public view returns (uint256) {
        return totalMeditationTime;
    }

    /**
     * @dev 瞑想時間の目標を計算する関数（純粋関数）
     * @param _days 日数
     * @return 目標時間
     */
    function calculateGoal(uint256 _days) public pure returns (uint256) {
        return _days * 2 hours;
    }
}
