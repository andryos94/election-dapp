pragma solidity ^0.5.0;

contract Election {
    //Model a Candidate 
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    //store and fetch Candidate after his key (uint)
    mapping(uint => Candidate) public candidates;

    //store candidate count 
    uint public candidatesCount;
    
    //constructor
    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate (string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

}