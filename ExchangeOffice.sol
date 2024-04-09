// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ExchangeOffice {
    address public owner;
    address public tokenAddress;
    uint256 public exchangeRate;

    constructor(address _tokenAddress, uint256 _exchangeRate) payable {
        owner = msg.sender;
        tokenAddress = _tokenAddress;
        exchangeRate = _exchangeRate;
    }

    function setExchangeRate(uint256 _exchangeRate) external {
        require(_exchangeRate > 0, "Exchange rate must be greater than zero");
        exchangeRate = _exchangeRate;
    }

    function setTokenAddress(address _tokenAddress) external {
        tokenAddress = _tokenAddress;
    }


    function tokenToEther(uint256 _tokenAmount) external payable {
        IERC20 token = IERC20(tokenAddress);
        uint256 etherAmount = exchangeRate * _tokenAmount;
        require(msg.value == etherAmount, "Incorrect ether amount");
        require(token.transfer(msg.sender, _tokenAmount), "Token transfer failed");
    }


    function etherToToken(uint256 _tokenAmount) public {
        IERC20 token = IERC20(tokenAddress);
        uint256 allowance = token.allowance(msg.sender, address(this));
        require(allowance >= _tokenAmount, "Insufficient allowance of tokens");
        uint256 etherAmount = exchangeRate * _tokenAmount;
        require(address(this).balance >= etherAmount, "Contract has insufficient balance");
        require(token.transferFrom(msg.sender, address(this), _tokenAmount), "Token transfer failed");
        payable(msg.sender).transfer(etherAmount);
    }
}
