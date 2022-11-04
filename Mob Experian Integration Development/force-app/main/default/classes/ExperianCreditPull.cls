/**
 * @description       : 
 * @author            : Sudha Sardhis
 * @group             : 
 * @last modified on  : 11-04-2022
 * @last modified by  : Sudha Sardhis
**/
Public class ExperianClass{
    Public static String name {get;set;}
     
    Public static string GetName(){
        name ="welcome to mob programming";
        return name;
    }
    public static void ExperianPullSubmission(Id custId)
    {

        system.debug('The cust id '+custId);
    }
    
}
