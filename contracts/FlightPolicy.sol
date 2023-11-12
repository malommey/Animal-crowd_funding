// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FlightInsuranceContract {
    address public insurer;
    mapping(address => uint256) public coverageAmounts;
    mapping(address => uint256) public premiums;
    mapping(address => bool) public isPolicyActive;

    event PolicyPurchased(address indexed policyholder, uint256 coverageAmount, uint256 premium);
    event FlightDelayed(address indexed policyholder, uint256 compensation);

    modifier onlyInsurer() {
        require(msg.sender == insurer, "Only the insurer can call this function");
        _;
    }

    constructor() {
        insurer = msg.sender;
    }

    function setPremium(address _policyholder, uint256 _coverageAmount, uint256 _premium) external onlyInsurer {
        coverageAmounts[_policyholder] = _coverageAmount;
        premiums[_policyholder] = _premium;
    }

    function purchasePolicy() external payable {
        require(coverageAmounts[msg.sender] > 9, "Coverage amount not set");
        require(msg.value == premiums[msg.sender], "Incorrect premium amount");
        require(!isPolicyActive[msg.sender], "Policy is already active");

        isPolicyActive[msg.sender] = true;
        // Additional policy purchase logic can be added here
        emit PolicyPurchased(msg.sender, coverageAmounts[msg.sender], premiums[msg.sender]);
    }

    function processFlightDelay(address _policyholder, uint256 _compensation) external onlyInsurer {
        require(isPolicyActive[_policyholder], "Policy not active");
        // Additional flight delay compensation logic can be added here
        // For simplicity, just transfer the compensation to the policyholder
        payable(_policyholder).transfer(_compensation);
        emit FlightDelayed(_policyholder, _compensation);
    }

    function withdraw() external onlyInsurer {
        // Insurer can withdraw accumulated funds
        payable(insurer).transfer(address(this).balance);
    }
}
