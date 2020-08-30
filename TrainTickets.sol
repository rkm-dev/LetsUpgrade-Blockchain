pragma solidity 0.4.22 <= 0.6.12;

contract ResturantBills{
    
    string TrainName;
    string TrainId;
    int TicketAmount;
    string PassengerName;
    string PassengerId; 
    string Date;
    string FromStationToStation;
    
    constructor(string newTrainName, string newTrainId, int newTicketAmount, string newPassengerName, string newPassengerId, string newDate, string newFromStationToStation) public {
        TrainName     = newTrainName;
        TrainId       = newTrainId;
        TicketAmount  = newTicketAmount;
        PassengerName = newPassengerName;
        PassengerId   = newPassengerId;
        Date          = newDate;
        FromStationToStation = newFromStationToStation;
    }
    
    function TicketData() public view returns(string,string,int,string,string,string,string) {
        return(TrainName,TrainId,TicketAmount,PassengerName,PassengerId,Date,FromStationToStation);
    }
    
    function setNewPassenger(int newTicketAmount, string newPassengerName, string newPassengerId, string newDate, string newFromStationToStation) public {
        TicketAmount  = newTicketAmount;
        PassengerName = newPassengerName;
        PassengerId   = newPassengerId;
        Date          = newDate;
        FromStationToStation = newFromStationToStation;
    }
}
