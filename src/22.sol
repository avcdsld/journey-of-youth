// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Medicine
 * @dev 治療を行うコントラクト
 */
contract Medicine {
    /**
     * @dev 病を治す関数
     * @param _severity 病の重症度
     * @return 治療結果
     */
    function heal(uint256 _severity) public pure returns (string memory) {
        if (_severity > 10) {
            revert(unicode"重症すぎて治療できません");
        }
        return unicode"病は癒されました";
    }
}

/**
 * @title Bhaisajyaraja
 * @dev 治療を試みるコントラクト
 */
contract Bhaisajyaraja {
    Medicine medicine = new Medicine();

    /**
     * @dev 治療を実行する関数
     * @param _severity 病の重症度
     * @return 治療結果のメッセージ
     */
    function attemptHealing(uint256 _severity) public view returns (string memory) {
        try medicine.heal(_severity) returns (string memory result) {
            return result;
        } catch Error(string memory reason) {
            return reason;
        }
    }
}
