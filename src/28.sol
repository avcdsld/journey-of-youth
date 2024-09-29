// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title UniversalGood
 * @dev 普賢の基本的な行いを持つコントラクト
 */
contract UniversalGood {
    function practice() public virtual returns (string memory) {
        return unicode"基本的な普賢の行い";
    }
}

/**
 * @title SamantabhadraKumara
 * @dev UniversalGoodを継承し、行いを深めるコントラクト
 */
contract SamantabhadraKumara is UniversalGood {
    function practice() public pure override returns (string memory) {
        return unicode"深められた普賢の行い";
    }
}
