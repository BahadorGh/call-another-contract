// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

contract Contacts {
    uint256 public count = 0; // state variable

    struct Contact {
        uint256 id;
        string name;
        string phone;
    }

    constructor() {
        createContact("bahador", "09359376979"); // Also can push into struct(as you wish)
    }

    mapping(uint256 => Contact) public _contacts;

    event ContactCreated(uint256 count, Contact newContact);

    function createContact(string memory _name, string memory _phone) public {
        count++;
        _contacts[count] = Contact(count, _name, _phone);
        emit ContactCreated(count, _contacts[count]);
    }

    function getContactById(uint256 _id)
        public
        view
        returns (Contact memory theContact)
    {
        return _contacts[_id];
    }
}
