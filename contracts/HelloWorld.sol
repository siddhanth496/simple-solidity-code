// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract HelloWorld
{
    event messagechanged(string oldmsg,string newmsg);

    string public message;

    constructor(string memory firstmsg)
    {
        message=firstmsg;
    }

    function update (string memory new_message) public {
        string memory oldmsg=message;
        message=new_message;
        emit messagechanged(oldmsg, message);
    }
    
}