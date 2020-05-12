pragma solidity ^0.5.1;

/*
 * learntocode
 * https://learntocodecs.herokuapp.com/
 * 
 * Set of simple programming problems for absolute beginners who can practice coding skills by solving these challenges
 */
contract LearnToCodeProblems {
    // number of problems
    uint256 private len = 35;
    
    // array of problems
    string[] private problems = new string[](len);
    
    // initialize problems array
    constructor() public {
        string memory threeNumbersAreGivenText = "Three numbers a, b and c are given,";
        string memory twoNumbersAreGivenText = "Two numbers a and b are given,";
        string memory generateRandomNumbersText = "Generate 15 random numbers in the range 1...10 and print only those are:";
        string memory createArrayOf10Text = "Create an array of 10 random numbers in the range 1...100 that are:";
        string memory createArrayOf100Text = "Create an array of 100 random numbers in the range 0...100 and find:";
        
        problems[0] = "Install an editor or IDE for your programming language and create a program that prints 'Hello world'";
        
        // variables and operators
        problems[1] = string(abi.encodePacked(threeNumbersAreGivenText, " find their sum"));
        problems[2] = string(abi.encodePacked(threeNumbersAreGivenText, " find their multiplication"));
        problems[3] = string(abi.encodePacked(threeNumbersAreGivenText, " find their average value"));
        problems[4] = string(abi.encodePacked(threeNumbersAreGivenText, " find squares of these numbers"));
        problems[5] = string(abi.encodePacked(threeNumbersAreGivenText, " find square roots of these numbers"));
        problems[6] = string(abi.encodePacked(threeNumbersAreGivenText, " find absolute values of the differences of all pairs of numbers"));
        problems[7] = string(abi.encodePacked(threeNumbersAreGivenText, " find quotients and reminders of these numbers divided by 2"));
        
        // decisions
        problems[8] = string(abi.encodePacked(twoNumbersAreGivenText, " print the largest value"));
        problems[9] = string(abi.encodePacked(twoNumbersAreGivenText, " print the smallest value"));
        problems[10] = string(abi.encodePacked(twoNumbersAreGivenText, " calculate their sum if they are equal or their multiplication otherwise"));
        problems[11] = string(abi.encodePacked(twoNumbersAreGivenText, " calculate their square roots if they are both positive or absolute values of only negative value(s) otherwise"));
        
        problems[12] = "Month number n is given, print the season to which it belongs";
        
        problems[13] = string(abi.encodePacked(threeNumbersAreGivenText, " find the largest sum of their pairs"));
        problems[14] = string(abi.encodePacked(threeNumbersAreGivenText, " find the number to which sum of other two numbers is equal or multiply these three numbers otherwise"));
        problems[15] = string(abi.encodePacked(threeNumbersAreGivenText, " find the number that is greater than a sum of two others or sum these three numbers otherwise"));
        
        // loops and arrays
        problems[16] = string(abi.encodePacked(generateRandomNumbersText, " odd"));
        problems[17] = string(abi.encodePacked(generateRandomNumbersText, " even"));
        problems[18] = string(abi.encodePacked(generateRandomNumbersText, " greater than 5"));
        problems[19] = string(abi.encodePacked(generateRandomNumbersText, " dividable by 3 with no reminder"));
        
        problems[20] = "Print all possible 3-digit binary numbers, e.g., 000, 001, 011, ..., 111";
        
        problems[21] = string(abi.encodePacked(createArrayOf10Text, " odd, multiply each number by itself before adding to the array"));
        problems[22] = string(abi.encodePacked(createArrayOf10Text, " even, find the square root of each number before adding to the array"));
        problems[23] = string(abi.encodePacked(createArrayOf10Text, " greater than 20 and lower than 80, and not equal to 50"));
        problems[24] = string(abi.encodePacked(createArrayOf10Text, " dividable by 3, 5, or 10 with no reminder"));
        
        problems[25] = string(abi.encodePacked(createArrayOf100Text, " average value"));
        problems[26] = string(abi.encodePacked(createArrayOf100Text, " max value"));
        problems[27] = string(abi.encodePacked(createArrayOf100Text, " min value"));
        problems[28] = string(abi.encodePacked(createArrayOf100Text, " sum of all values"));
        problems[29] = string(abi.encodePacked(createArrayOf100Text, " number of values greater/lower than a given number"));
        problems[30] = string(abi.encodePacked(createArrayOf100Text, " number of zero values"));
        problems[31] = string(abi.encodePacked(createArrayOf100Text, " standard deviation"));
        
        // functions
        problems[32] = "Create a function to calculate the given Fibonacci number (up to 20)";
        problems[33] = "Create a function to calculate the factorial of a given number (up to 10)";
        problems[34] = "Create a function to generate an array of random numbers and another one to print arrays";
    }
    
	// get problem by its number
    function practice(uint256 problem) public view returns (string memory) {
        if (problem < 1 || problem > len) {
            return "Sorry, we have only 1-35 tasks for now :(";
        }
        
        return problems[problem - 1];
    }
    
    // get about dapp
    function about() public pure returns (string memory) {
        return "#learntocode - Set of simple programming problems for absolute beginners who can practice coding skills by solving these challenges";
    }
}
