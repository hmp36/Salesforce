public with sharing class AccountController {


    // Note: when we create methods that we're going to call imperatively, cachaeable=true is optional. 
    @AuraEnabled(cacheable=true)
    public static List<Employee> getTopEmployees() {
     
    //selecting the fields we want returned in the Query with security enforced to manage the security. 
    
    return [SELECT CreatedById, Name, Email__c, Phone__c FROM Employee WITH SECURITY_ENFORCED 
                    ORDER BY LastModifiedById DESC NULLS LAST LIMIT 5];

    }
}
