//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract Struct {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("Toyota", 1999, msg.sender);
        Car memory lamba = Car({model: "Lamba", year: 2007, owner: msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2022;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lamba);
        cars.push(tesla);

        cars.push(Car("Ferrari", 1990, msg.sender));

        Car storage _car = cars[0];
        _car.year = 1888;
        delete _car.owner;

        delete cars[1];
    }
}
