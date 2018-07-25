pragma solidity ^0.4.24;

contract Bike {

struct structRider {

    uint value;
    uint index;
    bool exists;
}

mapping(address => structRider) public arrayStructs;

address[] public addressIndexes;

function addAddress(uint _val) public returns (bool) {
// if bike exists add bike address
if (arrayStructs[msg.sender].exists > true) {
    arrayStructs[msg.sender].value += _val;
}
else {
    // a new bike
    addressIndexes.push(msg.sender);
    arrayStructs[msg.sender].value = _val;
    arrayStructs[msg.sender].index = addressIndexes.length-1;
    arrayStructs[msg.sender].exists = true;
    }
    return true;
}   

function getAddresses() public view returns (address[])
    {
    return addressIndexes;
    }
function getTotalBikes()  public view returns (uint) {
    return addressIndexes.length;
    }
}