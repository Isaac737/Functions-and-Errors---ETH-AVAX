// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ControlFlowDemo {
    
    mapping(address => uint256) public balances;

    event Deposit(address indexed from, uint256 amount);

    event Withdrawal(address indexed to, uint256 amount);

    function deposit() external payable {
        
        require(msg.value > 0, "Deposit amount must be greater than zero");
        
        balances[msg.sender] += msg.value;

        emit Deposit(msg.sender, msg.value);
    }

    function withdraw(uint256 amount) external {
        
        require(balances[msg.sender] >= amount, "Insufficient balance");

        balances[msg.sender] -= amount;

        (bool success, ) = msg.sender.call{value: amount}("");
        
        if (!success) {
            revert("Transfer failed");
        }

        emit Withdrawal(msg.sender, amount);
    }

    function demonstrateAssert() external view {
       
        assert(balances[msg.sender] >= 0);
    }

    function demonstrateRevert(bool shouldRevert) external pure {
        
        if (shouldRevert) {
            revert("Operation reverted");
        }
    }
}
