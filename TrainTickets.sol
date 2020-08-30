//-----------------------------------------------------------------------------------------------------------------------------------------
// Transaction pending in Ropsten network, stuck at pending state, so changed to Goerli network, trn url and contract hash submitted below
//
// Transaction URL : https://goerli.etherscan.io/tx/0xa8889008db34e9541c9191dc75311113dfb7a521558dd1170a3f39f48f2be279
// Contract hash   : 0x5c3db7becfa83b6b2738721f624bccb1de292b1f
//
// verify at       : https://goerli.etherscan.io/address/0x5c3db7BecfA83B6B2738721f624BCCB1De292B1F
//-----------------------------------------------------------------------------------------------------------------------------------------


pragma solidity 0.4.22 <= 0.6.12;

contract TrainTicket{
    
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
