// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title UltimateVirtue
 * @dev 行いをさらに深める抽象コントラクト
 */
abstract contract UltimateVirtue {
    function performUltimateAction() public virtual returns (string memory);
}

/**
 * @title SamantabhadraUltimate
 * @dev UltimateVirtueを実装するコントラクト
 */
contract SamantabhadraUltimate is UltimateVirtue {
    /**
     * @dev 究極の行動を実行する関数
     * @return 行動の結果
     */
    function performUltimateAction() public pure override returns (string memory) {
        return unicode"普賢の究極の行いを達成しました";
    }
}
