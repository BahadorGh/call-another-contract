// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

library StructLib {
    struct Contact {
        uint256 id;
        string name;
        string phone;
    }
}

interface IContacts {
    function createContact(string memory _name, string memory _phone) external;

    function getContactById(uint256 _id)
        external
        view
        returns (StructLib.Contact memory);

    function _contacts(uint256 _key)
        external
        view
        returns (StructLib.Contact memory);
}

contract ContactCall {
    address contactContractAddr;

    event ContractAddrAdded(address contactContractAddr);

    constructor(address _contactContractAddr) {
        contactContractAddr = _contactContractAddr;
    }

    function setContactContractAddr(address _contractAddr) public {
        contactContractAddr = _contractAddr;
        emit ContractAddrAdded(contactContractAddr);
    }

    function makeNewContact(string memory _name, string memory _phone) public {
        IContacts(contactContractAddr).createContact(_name, _phone);
    }

    function getContactInfo(uint256 _key)
        public
        view
        returns (StructLib.Contact memory)
    {
        StructLib.Contact memory _contact = IContacts(contactContractAddr)
            .getContactById(_key);
        return _contact;
    }
}
