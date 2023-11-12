// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";


import {FIPToken} from "./FIPToken.sol";

contract FlightInsurrance{

    FIPToken public fiptoken;

    address AmericanAirline;
     uint256 AmericaSamao = 80;
     uint256 Antigua_Barbuda;
     uint256 Argentina;
     uint256 Aruba;


    constructor( ) {

    AmericanAirline = AmericanAirline;
    fiptoken = FIPToken(AmericanAirline);

 
    }

    struct Insurance {
     address AmericanAirline;
     uint256 AmericaSamao;
     uint256 Antigua_Barbuda;
     uint256 Argentina;
     uint256 Aruba;
  
    }

    function AmericaAirline (uint256 amount) external payable {
        fiptoken = new FIPToken();
     Insurance memory insurance = Insurance(AmericanAirline,AmericaSamao,Antigua_Barbuda, Argentina,Aruba);
    uint256 ticket = insurance.AmericaSamao;
    fiptoken.transfer(address(this), ticket);
    require(msg.value == ticket);


    }



   
} 