# datestore
A date storage contract for Ethereum.

## abi

``` JSON
[{"constant":true,"inputs":[],"name":"length","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"d","type":"uint64"}],"name":"push","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"i","type":"uint256"}],"name":"get","outputs":[{"name":"","type":"uint64"}],"payable":false,"type":"function"},{"inputs":[],"payable":false,"type":"constructor"}]
```

## usage

``` javascript
var abi = [{"constant":true,"inputs":[],"name":"length","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"d","type":"uint64"}],"name":"push","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"i","type":"uint256"}],"name":"get","outputs":[{"name":"","type":"uint64"}],"payable":false,"type":"function"},{"inputs":[],"payable":false,"type":"constructor"}];
var DateStore = eth.contract(abi);
var dateStore = DateStore.at("/* contract address */");

dateStore.length();
// 0

dateStore.get(0);
// /* unix date */
```
