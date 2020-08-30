//-----------------------------------------------------------------------------------------------------------------------------------------
// Transaction pending in Ropsten network, stuck at pending state, so changed to Goerli network, txn url and contract hash submitted below
//
// Transaction URL : https://goerli.etherscan.io/tx/0x5f3442c4a997de0b13c5b67b5f5ec8835d6f454e4a377e44e9e6a3b498943a8c
// Contract hash   : 0x548404d26c27be5e7837c32bc04429e256d12740
//
// verify at       : https://goerli.etherscan.io/address/0x548404d26c27be5e7837c32bc04429e256d12740
//-----------------------------------------------------------------------------------------------------------------------------------------


pragma solidity 0.4.22 <= 0.6.12;

contract ResturantBills{
    
    string EmployeeName;
    string EmployeeId;
    int amount;
    string ResturantNameAddr;
    string ResturantBillNumber; 
    string Date;
    string Purpose;
    
    constructor(string newEmployeeName, string newEmployeeId, int newAmount, string newResturantNameAddr, string newResturantBillNumber, string newDate, string newPurpose) public {
        EmployeeName = newEmployeeName;
        EmployeeId = newEmployeeId;
        amount = newAmount;
        ResturantNameAddr = newResturantNameAddr;
        ResturantBillNumber = newResturantBillNumber;
        Date = newDate;
        Purpose = newPurpose;
    }
    
    function readResturantBill() public view returns(string,string,int,string,string,string,string) {
        return(EmployeeName,EmployeeId,amount,ResturantNameAddr,ResturantBillNumber,Date,Purpose);
    }
}
