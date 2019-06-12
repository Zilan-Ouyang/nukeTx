#for nuke transactions and payments

- Set pizza buyer (trustedBuyer)
 ```
    address public trustedBuyer;

    function nukeToken(address _trustedBuyer) public {...}

 ```

- Check how much has been paid to this contract
 ```
    
    function payment() public payable {...}
    
 ```
 - Check the balance of the contract owner
 ```
    function balanceOfOwner() public onlyOwner view returns (uint balance) {..}
    
 ```

- Withdraw funtion for contract owner
 ```
     function withdraw(address to, uint value) public onlyOwner {...}
    
 ```
