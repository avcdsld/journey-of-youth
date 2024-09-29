// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Prabhasakara
 * @dev 素晴らしい光を放つコントラクト
 */
contract Prabhasakara {
    /**
     * @dev 光を放つ関数（引数なし）
     * @return メッセージ
     */
    function emitLight() public pure returns (string memory) {
        return unicode"光が放たれました";
    }

    /**
     * @dev 光を放つ関数（光の強さを指定）
     * @param intensity 光の強さ
     * @return メッセージ
     */
    function emitLight(uint256 intensity) public pure returns (string memory) {
        return string(abi.encodePacked(unicode"光の強さ：", uint2str(intensity)));
    }

    /**
     * @dev 数値を文字列に変換する内部関数
     * @param _i 数値
     * @return _uintAsString 文字列
     */
    function uint2str(uint256 _i) internal pure returns (string memory _uintAsString) {
        if (_i == 0) {
            return "0";
        }
        uint256 temp = _i;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        uint256 index = digits - 1;
        temp = _i;
        while (temp != 0) {
            buffer[index--] = bytes1(uint8(48 + temp % 10));
            temp /= 10;
        }
        return string(buffer);
    }
}
