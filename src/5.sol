// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Sthavara
 * @dev 戒律と道徳を守るコントラクト
 */
contract Sthavara {
    uint256 public virtuousActions;

    /**
     * @dev 善い行いを記録する関数
     * @param _actions 行った善行の数
     */
    function recordVirtuousAction(uint256 _actions) public {
        require(_actions > 0, unicode"善行は1以上でなければなりません");
        virtuousActions += _actions;
    }
}
