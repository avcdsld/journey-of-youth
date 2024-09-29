// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Tathagata
 * @dev 仏の悟りを完成するコントラクト
 */
contract Tathagata {
    string public ultimateTruth;

    /**
     * @dev コンストラクタで究極の真理を設定
     */
    constructor() {
        ultimateTruth = unicode"全ては一つであり、一つは全てである";
    }
}
