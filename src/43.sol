// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Wisdom
 * @dev 智慧を提供するコントラクト
 */
abstract contract Wisdom {
    function shareWisdom() public virtual returns (string memory);
}

/**
 * @title Compassion
 * @dev 慈悲を提供するコントラクト
 */
abstract contract Compassion {
    function showCompassion() public virtual returns (string memory);
}

/**
 * @title SamantabhadraFinal
 * @dev WisdomとCompassionを継承し、最終的な普賢の教えを実装するコントラクト
 */
contract SamantabhadraFinal is Wisdom, Compassion {
    function shareWisdom() public pure override returns (string memory) {
        return unicode"究極の智慧を共有します";
    }

    function showCompassion() public pure override returns (string memory) {
        return unicode"無限の慈悲を示します";
    }
}
