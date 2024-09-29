// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Vimalaprabha
 * @dev 高みからの視野を提供するコントラクト
 */
contract Vimalaprabha {
    string[] public panoramicView;

    /**
     * @dev 景色を追加する関数
     * @param _view 景色の名前
     */
    function addView(string memory _view) public {
        panoramicView.push(_view);
    }

    /**
     * @dev 全ての景色を取得する関数
     * @return 景色の配列
     */
    function getViews() public view returns (string[] memory) {
        return panoramicView;
    }
}
