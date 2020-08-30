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
