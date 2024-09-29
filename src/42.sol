// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Vajradhara
 * @dev 堅固な教えを持つコントラクト
 */
contract Vajradhara {
    uint256 public constant MAX_SUPPLY = 1000;
    uint256 public totalSupply;

    error MaxSupplyExceeded(uint256 attemptedSupply);

    /**
     * @dev トークンを生成する関数
     * @param amount 生成する量
     */
    function mint(uint256 amount) public {
        uint256 newTotal = totalSupply + amount;
        if (newTotal > MAX_SUPPLY) {
            revert MaxSupplyExceeded(newTotal);
        }
        totalSupply = newTotal;
        assert(totalSupply <= MAX_SUPPLY);
    }
}
