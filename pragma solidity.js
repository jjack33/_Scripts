pragma solidity >= 0.7.0 < 0.9.0;

contract Safe {
  address private safeOwner;
  modifier isSafeOwner {
    require(
      msg.sender == safeOwner,
      "Must be safe onwer to open safe"
    );
    _;
  }

  modifier hasAdequateFunds {
    require(
      msg.sender.balance >= 47,
      "Must have at least 47 WEI"
    );
    require(
      msg.value == 47,
      "Must transfer 47 WEI to access"
    );
    _;
  }

  constructor () {
    safeOwner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
  }

  function openSafe(string memory input) public payable isSafeOwner hasAdequateFunds returns(bool) {
    bytes2 key = hex'a12c';
    bytes32 result = sha256(abi.encodePacked(input));
    if (result[0] == key[0] && result[1] == key[1]) {
      return true;
    } else {
      return false;
    }
  }
}