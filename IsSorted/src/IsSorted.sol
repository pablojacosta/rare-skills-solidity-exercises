// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract IsSorted {
    /**
     * The goal of this exercise is to return true if the members of "arr" is sorted (in ascending order) or false if its not.
     */
    function isSorted(uint256[] calldata arr) public pure returns (bool) {
        bool response = true;

        for (uint256 i = 0; i < arr.length; i++) {
            if (i == arr.length - 1) {
                break;
            }

            if (arr[i] < arr[i + 1] || arr[i] == arr[i + 1]) {
                continue;
            } else {
                response = false;
                break;
            }
        }

        return response;
    }
}
