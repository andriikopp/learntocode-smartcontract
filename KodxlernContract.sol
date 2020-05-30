pragma solidity ^0.5.1;

// KODXLERN Decentralized Coding Learning
// https://kodxlern.github.io/
//
// Programming tasks for beginners
//
contract KodxlernContract {
    // problems
    mapping (uint256 => string) private problems;
    
    // last index
    uint256 private last = 0;
    
    // tasks authors
    mapping (address => uint256) private authors;
    
	// get problem by its number
    function practice(uint256 problem) public view returns (string memory) {
        if (problem < 1 || problem > last) {
            return "Invalid problem ID!";
        }
        
        return problems[problem];
    }
    
    // add new problem
    function add(string memory problem) public payable {
        last = last + 1;
        problems[last] = problem;
        authors[msg.sender] += 1;
    }
    
    // replace existing problem
    function replace(string memory problem, uint256 id) public payable {
        if (id >= 1 || id <= last) {
            problems[id] = problem;
            authors[msg.sender] += 1;
        }
    }
    
    // get sender balance
    function balance() public view returns (uint256) {
        return authors[msg.sender];
    }
    
    // get author balance
    function authorBalance(address author) public view returns (uint256) {
        return authors[author];
    }
}
