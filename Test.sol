// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract test{

    string public pesan;

    function getPesan() public view returns (string memory){
    return pesan;
    }

    function setPesan(string memory _baru) public {
        pesan = _baru;
}

}