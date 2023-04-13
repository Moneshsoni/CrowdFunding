// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract Funding{
    
    address public manager;
    string public name;
    string public Description;
    uint public amount;

    constructor(string memory _name,string memory _description,uint _amount){
        manager = msg.sender;
        name = _name;
        Description = _description;
        amount = _amount;
    }

    //Only Manager of the event can withdraw
    modifier onlyManager{
        require(msg.sender==manager,"You have not authority to Withdraw Ether");
        _;
    }

    function DepositFund()public payable{
        require(msg.value>=0.01 ether,"Please Donate more than 0.01 ether");
    }

    function getBalance()public view returns(uint){
        return address(this).balance;
    }

    function WithdrawFund()public payable onlyManager{
        address payable to = payable(msg.sender);
        to.transfer(getBalance());
    }
}