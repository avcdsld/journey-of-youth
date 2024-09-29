// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Gunamukha
 * @dev 徳の頂点を表すコントラクト
 */
contract Gunamukha {
    struct Virtue {
        string name;
        uint256 level;
    }

    Virtue public highestVirtue;

    /**
     * @dev 徳を設定する関数
     * @param _name 徳の名前
     * @param _level 徳のレベル
     */
    function setVirtue(string memory _name, uint256 _level) public {
        highestVirtue = Virtue(_name, _level);
    }

    /**
     * @dev 徳を取得する関数
     * @return 徳の名前とレベル
     */
    function getVirtue() public view returns (string memory, uint256) {
        return (highestVirtue.name, highestVirtue.level);
    }
}
