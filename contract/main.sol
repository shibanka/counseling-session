// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract CounselingSession {
    address private owner;
    mapping(address => bool) private patients;
    mapping(address => bool) private counselors;
    mapping(address => string) private patientData;

    // Event emitted when patient data is updated
    event PatientDataUpdated(address patient, string data);

    constructor() {
        owner = msg.sender;
    }

    // Function to set patient data
    function setPatientData(string memory _patientData) public {
        require(patients[msg.sender], "Only patients can set their data");
        patientData[msg.sender] = _patientData;
        emit PatientDataUpdated(msg.sender, _patientData);
    }

    // Function to get patient data
    function getCounselorData(address _patient) public view returns (string memory) {
        require(counselors[msg.sender], "Only counselors can access patient data");
        return patientData[_patient];
    }

    // Function to add patient
    function addPatient(address _patient) public {
        require(msg.sender == owner, "Only the owner can add patients");
        patients[_patient] = true;
    }

    // Function to add counselor
    function addCounselor(address _counselor) public {
        require(msg.sender == owner, "Only the owner can add counselors");
        counselors[_counselor] = true;
    }
}
