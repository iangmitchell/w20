// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        unchecked{
            number++;
        }
    }

    function increment1() public {
        number++;
    }

    function decrement() public {
        unchecked{
            number--;
        }
    }

    function decrement1() public{
        number--;
    }


    function loopCheck() public{
        uint256 max=1000;
        for(uint256 i; i<max; i++){
            number++;
        }
    }

    function loopUncheck() public{
        uint max=1000;
        for(uint256 i; i<max;){
            unchecked{
                number++;
                i++;
            }
        }
    }
}
