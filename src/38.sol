// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title MaitreyaProxy
 * @dev 将来のアップグレードを可能にするコントラクト
 */
contract MaitreyaProxy {
    receive() external payable {}

    address public implementation;

    constructor(address _implementation) {
        implementation = _implementation;
    }

    /**
     * @dev フォールバック関数で全ての呼び出しを委任
     */
    fallback() external payable {
        address impl = implementation;
        require(impl != address(0), unicode"実装コントラクトが設定されていません");

        assembly {
            let ptr := mload(0x40)
            calldatacopy(ptr, 0, calldatasize())

            let result := delegatecall(gas(), impl, ptr, calldatasize(), 0, 0)

            let size := returndatasize()
            returndatacopy(ptr, 0, size)

            switch result
            case 0 { revert(ptr, size) }
            default { return(ptr, size) }
        }
    }

    /**
     * @dev 実装コントラクトを更新する関数
     * @param _newImplementation 新しい実装コントラクトのアドレス
     */
    function updateImplementation(address _newImplementation) public {
        implementation = _newImplementation;
    }
}
