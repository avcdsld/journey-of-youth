// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title Dharmadhatu
 * @dev 全ての真理を理解するコントラクト
 */
contract Dharmadhatu {
    function perceiveTruth(address[] memory contracts) public view returns (string[] memory) {
        string[] memory truths = new string[](contracts.length);
        for (uint256 i = 0; i < contracts.length; i++) {
            (, bytes memory data) = contracts[i].staticcall(
                abi.encodeWithSignature("ultimateTruth()")
            );
            truths[i] = abi.decode(data, (string));
        }
        return truths;
    }
}
