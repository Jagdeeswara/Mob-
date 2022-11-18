/**
 * @description       : 
 * @author            : Sudha Sardhis
 * @group             : 
 * @last modified on  : 11-18-2022
 * @last modified by  : Jhansi Al
**/
Public class ExperianClass{
    private final static String End_Point = 'Callout:ExperianCreditPull';
        
    public static void ExperianPullSubmission(Id custId)
    {
        
        ExperianClass  expClass =new ExperianClass();
        Account accDetails=expClass.fetchcustomerDetails(custId);
        Http hp = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndPoint('Callout:ExperianCreditPull');
        req.setMethod('GET');
        HttpResponse res = new HttpResponse();
        res=hp.send(req);
        system.debug;

    try{
       if(res.getStatusCode()!= 200 || res.getStatusCode() != 201) {
        Map<String,Object> result = new Map<String,Object>();
        result=res.getBody();


        system.debug('The cust id '+custId);
    }
    }
      
   catch(Exception ex){
     system.debug('Error calloutaFailed'+ex.getStatusCode());
     pooju__ErrorLog__c error = new pooju__ErrorLog__c();
     error.name='Experian Callout error';
     error.pooju__Error_Body__c=ex.getStackTraceString();
     error.pooju__Response_Code__c=ex.getStatusCode();
     insert error;
       }

       
    }
    public  Account  fetchcustomerDetails(Id custId){
        Account acc=[Select id,Support__c, bin__c,Model_Code__c, Comment__c Where Id=:custId];
      return acc;
    }

    public void getExperianCredentials(){
        Map<String,String> enValue =
        HttpRequest htpReq = new HttpRequest();
        htpReq.setEndPoint(End_Point);
        HttpResponse htpRes = http.send(htpReq);
        

    }
    
    
}
