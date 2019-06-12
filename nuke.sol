pragma solidity 0.5.4;

contract nuke {
    address public owner;
    address public trustedBuyer;

    function nukeToken(address _trustedBuyer) public {
        owner = msg.sender;
        trustedBuyer = _trustedBuyer;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    modifier onlyTrustedBuyer {
        require(msg.sender == trustedBuyer);
        _;
    }

    mapping (address => uint) public balanceOf;
    uint public payments;

    function payment() public payable {
        require(payments + msg.value > payments);
        require(balanceOf[msg.sender] + msg.value > balanceOf[msg.sender]); // Check for overflows
        balanceOf[msg.sender] += msg.value;
        payments += msg.value;
    }

    function balanceOfOwner() public onlyOwner view returns (uint balance) {
        return balanceOf[msg.sender];
    }

    function withdraw(address to, uint value) public onlyOwner {
        require(balanceOf[msg.sender] >= value);
        require(balanceOf[to] + value > balanceOf[to]); // Check for overflows
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
    }
    
   
}
