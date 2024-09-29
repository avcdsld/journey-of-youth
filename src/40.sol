// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Akashagarbha
 * @dev 無限の空間の智慧を持つコントラクト
 */
contract Akashagarbha {
    mapping(uint256 => string) public infiniteWisdom;

    /**
     * @dev 知恵を追加する関数
     * @param _key キーとなる数値
     * @param _wisdom 知恵の内容
     */
    function addWisdom(uint256 _key, string memory _wisdom) public {
        infiniteWisdom[_key] = _wisdom;
    }

    /**
     * @dev 知恵を取得する関数
     * @param _key キーとなる数値
     * @return 知恵の内容
     */
    function getWisdom(uint256 _key) public view returns (string memory) {
        return infiniteWisdom[_key];
    }
}
