# ControlFlowDemo

This Solidity contract demonstrates the use of control flow statements such as require(), assert(), and revert() in managing contract execution and enforcing conditions.

# Contract Overview
* balances: A mapping that stores the Ether balances of different addresses.

# Events
* Deposit: An event triggered whenever a deposit is correctly made.
* Withdrawal: An event emitted after a withdrawal has been successfully finished.

# Functions
## deposit()

* Accepts user deposits in Ether.
* The deposit amount (msg.value) must be greater than 0.
* The deposit amount is added to the sender's account balance.
* A deposit event is generated.

## Withdraw(uint256 amount)
* Allows users to withdraw a certain amount of Ethereum.
* The sender must have sufficient balance to withdraw the stated amount.
* Updates the sender's balance and sends the specified amount of Ether to them.
* If the transfer of funds fails, the transaction is rolled back with an error notice.
* A Withdrawal event is generated.

## demonstrateAssert()
* Use assert() to ensure that the sender's balance is not negative.
* This function is primarily intended to demonstrate the use of assert() in Solidity.

## demonstrateRevert (bool shouldRevert)
* If the shouldRevert argument is set to true, the transaction will be reversed.
* This function explains how to use revert() with a customized error message.

# Usage
* Deploy the contract to a Solidity-compatible blockchain using Remix IDE or other compatible tools.
* Interact with the contract functions such as deposit() and withdraw() as desired.
* Use the demonstrateAssert() and demonstrateRevert() functions to observe the behavior of assert() and revert() respectively.
  
# License
This project is licensed under the MIT License.
