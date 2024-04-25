// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract TicTacToe {
    /* 
        This exercise assumes you know how to manipulate nested array.
        1. This contract checks if TicTacToe board is winning or not.
        2. Write your code in `isWinning` function that returns true if a board is winning
           or false if not.
        3. Board contains 1's and 0's elements and it is also a 3x3 nested array.
    */

    function isWinning(uint8[3][3] memory board) public pure returns (bool) {
        uint256 sumRowOne = 0;
        uint256 sumRowTwo = 0;
        uint256 sumRowThree = 0;
        uint256 sumColOne = 0;
        uint256 sumColTwo = 0;
        uint256 sumColThree = 0;
        uint256 sumTopLeftToBotRight = 0;
        uint256 sumBotLeftToTopRight = 0;

        for (uint256 i = 0; i < board.length; i++) {
            for (uint256 j = 0; j < board[i].length; j++) {
                if (i == 0) {
                    sumRowOne += board[i][j];
                }

                if (i == 1) {
                    sumRowTwo += board[i][j];
                }

                if (i == 2) {
                    sumRowThree += board[i][j];
                }

                if (j == 0) {
                    sumColOne += board[i][j];
                }

                if (j == 1) {
                    sumColTwo += board[i][j];
                }

                if (j == 2) {
                    sumColThree += board[i][j];
                }

                if (i == 1 && j == 1) {
                    sumTopLeftToBotRight += board[i][j];
                    sumBotLeftToTopRight += board[i][j];
                }

                if (i != 1 && i == j) {
                    sumTopLeftToBotRight += board[i][j];
                }

                if ((i == 0 && j == 2) || (i == 2 && j == 0)) {
                    sumBotLeftToTopRight += board[i][j];
                }
            }
        }

        if (
            sumRowOne == 3 ||
            sumRowTwo == 3 ||
            sumRowThree == 3 ||
            sumColOne == 3 ||
            sumColTwo == 3 ||
            sumColThree == 3 ||
            sumBotLeftToTopRight == 3 ||
            sumTopLeftToBotRight == 3
        ) {
            return true;
        } else {
            return false;
        }
    }
}
