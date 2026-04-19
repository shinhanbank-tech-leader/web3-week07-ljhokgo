// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Sidekick {
    function makeContact(address hero) external {
        // TODO: trigger the hero's fallback function!
        (bool success, ) = hero.call(abi.encodeWithSignature("nonExistentFunction()"));
        
        // 호출 성공 여부 확인
        require(success, "Fallback trigger failed");
    }
}
