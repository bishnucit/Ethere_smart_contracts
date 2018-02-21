//using mapping and structs to count number of accounts that are accessing the site and making changes to the db.



pragma solidity ^0.4.0;

contract Courses {

    struct Instructor {
        uint age;
        string fName;
        string lname;
    }

    mapping (address => Instructor) instructors;
    address[] public instructorAccts;

    function setInstructor(address _address, uint _age, string _fName, string _lname) public {
        var instructor = instructors[_address];

        instructor.age = _age;
        instructor.fName = _fName;
        instructor.lname = _lname;

        instructorAccts.push(_address) -1;
    }

    function getInstructors() view public returns (address[]){
        return instructorAccts;
    }

    function getInstructor(address _address) view public returns(uint, string, string){
        return(instructors[_address].age, instructors[_address].fName, instructors[_address].lname);

    }

    function countInstructors() view public returns (uint){
        return instructorAccts.length;
    }
}