// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Vimalakirti
 * @dev 清浄な行いを示すコントラクト
 */
contract Vimalakirti {
    uint256 private _pureActions;

    /**
     * @dev 清浄な行いを追加する関数
     * @param actions 行いの数
     */
    function addPureActions(uint256 actions) public {
        _pureActions += actions;
    }

    /**
     * @dev 清浄な行いの総数を取得する関数
     * @return 行いの総数
     */
    function getPureActions() public view returns (uint256) {
        return _pureActions;
    }
}
