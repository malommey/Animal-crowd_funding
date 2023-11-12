// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract AnimalFonding {
   
    uint256 cat;
    uint256 dog;
    uint256 pig;
    uint256 public SAVEDPIG;
    uint256 public SAVEDCAT;
    uint256 public SAVEDDOG;
    uint256 public totalcat;
    uint256 public totaldog;


    
   mapping(uint256 cat => Animal[]) public savedcat;

    Animal[] public pet;
    
    struct Animal {
    uint256 cat;
    uint256 dog;  
    uint256 SAVEDCATANIMAL;
    uint256 SAVEDDOGANIMAL;
    uint256 totalcat;
    uint256 totaldog;


    }

    function checkSavedPet() external{
     Animal memory animal = Animal(cat,dog,SAVEDDOG, SAVEDCAT,totalcat,totaldog);
     uint256  mydog = animal.dog;
     uint256  animalsdog = animal.SAVEDDOGANIMAL;
     mydog = animalsdog;

     uint256 mycat = animal.cat;
     uint256 catanimals =animal.SAVEDCATANIMAL; 
     mycat = catanimals;

      pet.push(animal);
      

      
    }

    function depositForCat(uint256) external payable {
     msg.value > cat;
      Animal memory animal = Animal(cat,dog,SAVEDCAT,SAVEDDOG,totalcat,totaldog);
     uint256 mycat = animal.cat;
     uint256 catanimals =animal.SAVEDCATANIMAL; 
     SAVEDCAT++;
     mycat = catanimals;
     pet.push(animal);

    }
    function depositForDog(uint256 Dog) external payable {
     msg.value > Dog;
     Animal memory animal = Animal(cat,dog,SAVEDDOG, SAVEDCAT,totalcat,totaldog);
     uint256  mydog = animal.dog;
     uint256  animalsdog = animal.SAVEDDOGANIMAL++;
     SAVEDDOG++;
     mydog = animalsdog;
   
     pet.push(animal);
    }
    function depositForPig(uint256 Pig) external payable {
        msg.value > Pig;
        SAVEDPIG++;
    }

   
}