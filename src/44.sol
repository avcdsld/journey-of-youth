// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title PowerSource
 * @dev 力を提供するコントラクト
 */
contract PowerSource {
    function getPower() public pure returns (string memory) {
        return unicode"大いなる力が供給されました";
    }
}

/**
 * @title Mahasthamaprapta
 * @dev PowerSourceの力を活用するコントラクト
 */
contract Mahasthamaprapta {
    address public powerSource;

    constructor(address _powerSource) {
        powerSource = _powerSource;
    }

    /**
     * @dev 大いなる力を取得する関数
     * @return 力のメッセージ
     */
    function obtainGreatPower() public returns (string memory) {
        (bool success, bytes memory data) = powerSource.delegatecall(
            abi.encodeWithSignature("getPower()")
        );
        require(success, unicode"力の取得に失敗しました");
        return abi.decode(data, (string));
    }
}
