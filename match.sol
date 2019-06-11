pragma solidity >=0.4.22 <0.6.0;
contract project{
    string userid;
    string pwd;
    function login(string memory id, string memory password) public{
        userid=id;
        pwd=password;
    }
    function confirm() public view returns (string memory){
        return userid;
    }
    function enroll(string memory id, string memory password) public{
        userid=id;
        pwd=password;
    }
  //  function register() public view returns (string memory){
   //     return userid;
  //  }
    
}
contract matchgeneration{
    struct matchdata{
        string date;
        string time;
        string venue;
    }
    uint256  matchcount=0;
   matchdata[]  matches;
   function creatematch(string memory _date, string memory _time ,string memory _venue) public 
   {
       matches[matches.length].date= _date;
       matches[matches.length].time= _time;
       matches[matches.length].venue= _venue;
       matches.length++;
       matchcount++;
   }
    string s="matches created";
    function confirm() public view returns (uint256,string memory){
        return (matchcount,s);
    }
    
}
