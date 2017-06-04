pragma solidity ^0.4.10;

contract DateStore {
    address owner;
    uint64[] dates;

    function DateStore() public {
        owner = msg.sender;
    }

    function push(uint64 d) external returns (uint) {
        if(owner != msg.sender) {
            return 0;
        }

        uint i = dates.length++;
        dates[i] = d;
        return i;
    }

    function get(uint i) external constant returns (uint64) {
        return dates[i];
    }

    function length() external constant returns (uint) {
        return dates.length;
    }
}
