// Copyright 2019 Joel Gugger, TrueLevel SA.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

pragma solidity ^0.4.22;


contract CasperSet {
    /// Casper validators are defined by their addresses and weights.
    address[] addr;
    uint256[] weight;

    constructor(address[] _addr, uint256[] _weight) public {
        assert(_addr.length == _weight.length);
        addr = _addr;
        weight = _weight;
    }

    /// Get current validator set.
    function getValidators()
        external
        view
        returns (address[] _addr, uint256[] _weight)
    {
        _addr = addr;
        _weight = weight;
    }
}
