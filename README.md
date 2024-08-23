Counseling Session Smart Contract

![image](https://github.com/user-attachments/assets/727580c3-27f5-4dd3-9c21-a83ab9651275)


This smart contract, written in Solidity, is designed to manage counseling sessions. It handles patient and counselor registrations and allows patients to update their data, which can be accessed by authorized counselors.

Vision The CounselingSession smart contract aims to provide a secure, decentralized platform for managing counseling sessions, ensuring that patient data is accessible only to authorized counselors. The platform is designed to protect patient privacy while allowing counselors to provide informed and effective care.

Features Owner Management:

The contract owner has exclusive rights to register patients and counselors. Patient Data Management:

Patients can securely update their personal data. Counselors can access the data of registered patients for counseling purposes. Event Logging:

Emission of events when patient data is updated, allowing for easy tracking and logging. Access Control:

Strong access control mechanisms ensure that only authorized users can perform specific actions (e.g., updating or viewing patient data). Flowchart Below is a simplified flowchart illustrating the interaction between the owner, patients, and counselors:

+-------------------+ | Contract Owner | +-------------------+ | | (Add Patient) v +-------------------+ | Patient | +-------------------+ | | (Update Data) v +-------------------+ | Patient Data | +-------------------+ | | (Access Data) v +-------------------+ | Counselor | +-------------------+ Contract Details State Variables owner: The address of the contract owner. patients: A mapping to track registered patients. counselors: A mapping to track registered counselors. patientData: A mapping to store data for each patient. Events PatientDataUpdated: Emitted when a patient's data is updated. Functions constructor(): Initializes the contract by setting the deployer as the owner.

setPatientData(string memory _patientData): Allows a registered patient to update their data. Emits the PatientDataUpdated event.

getCounselorData(address _patient): Allows a registered counselor to retrieve a patient's data.

addPatient(address _patient): Allows the owner to register a new patient.

addCounselor(address _counselor): Allows the owner to register a new counselor.

Usage Deploy the Contract:

The contract deployer becomes the owner. Register Patients:

The owner can call addPatient to register a new patient. Register Counselors:

The owner can call addCounselor to register a new counselor. Update Patient Data:

Registered patients can call setPatientData to update their personal data. Access Patient Data:

Registered counselors can call getCounselorData to access patient data. Security Considerations Only the owner can register patients and counselors. Only registered patients can update their data. Only registered counselors can access patient data. Contact Details For further information, support, or inquiries, please contact the contract owners:

Name: Shibanka Dey 
Email: deyshibanka@gmail.com 
Phone: 7005116071 
Contract Address- 0x6d897563d978dda8a1cdaa8f7f7150c5698a3399

![Screenshot 2024-08-23 161748](https://github.com/user-attachments/assets/bd073156-a36c-4011-9287-e1d702f06758)


