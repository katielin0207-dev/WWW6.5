//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable{
    address private owner;
    event OwnershipTransferred()
    
    constructor() {
        owner = msg.sender;

    }
    
    modifier onlyOwner(){
        require(msg.sender == owner, "Access denied: Only the owner can perform this action");
        _;
    }
   
   function OwnerAddress() public view return (address){
     return owner;
   }


   
}