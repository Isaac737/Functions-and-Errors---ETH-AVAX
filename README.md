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
