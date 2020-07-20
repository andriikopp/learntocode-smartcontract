pragma solidity ^0.5.1;

// KODXLERN Decentralized Coding Learning
// https://kodxlern.github.io/
//
// Programming tasks for beginners
//
contract KodxlernContract {
    // contract owner
    address private _owner;

    // problems
    mapping (uint256 => string) private problems;
    
    // last index
    uint256 private last = 0;
    
    constructor() public {
        _owner = msg.sender;
    }
    
	// get problem by its number
    function practice(uint256 problem) public view returns (string memory) {
        if (problem < 1 || problem > last) {
            return "Invalid problem ID!";
        }
        
        return problems[problem];
    }
    
    // add new problem
    function add(string memory problem) public payable {
        if (_owner == msg.sender) {
            last = last + 1;
            problems[last] = problem;
        }
    }
    
    // replace existing problem
    function replace(string memory problem, uint256 id) public payable {
        if (_owner == msg.sender) {
            if (id >= 1 || id <= last) {
                problems[id] = problem;
            }
        }
    }
    
    // get total problems
    function total() public view returns (uint256) {
        return last;
    }
}
