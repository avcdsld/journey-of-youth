// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title VirtuousAction
 * @dev 行動による悟りを示す抽象コントラクト
 */
abstract contract VirtuousAction {
    function performAction() public virtual returns (string memory);
}

/**
 * @title Samantabhadra
 * @dev VirtuousActionを実装するコントラクト
 */
contract Samantabhadra is VirtuousAction {
    /**
     * @dev 行動を実行する関数
     * @return 行動の結果
     */
    function performAction() public pure override returns (string memory) {
        return unicode"普賢の行いを実践しました";
    }
}
