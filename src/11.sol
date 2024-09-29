// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title GreatVehicle
 * @dev 大乗の教えを持つ親コントラクト
 */
contract GreatVehicle {
    function universalCompassion() public pure returns (string memory) {
        return unicode"全ての存在に慈悲を";
    }
}

/**
 * @title Sagaradatta
 * @dev GreatVehicleを継承するコントラクト
 */
contract Sagaradatta is GreatVehicle {
    function deepWisdom() public pure returns (string memory) {
        return unicode"深遠なる智慧を得る";
    }
}
