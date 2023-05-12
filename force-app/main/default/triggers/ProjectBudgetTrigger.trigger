trigger ProjectBudgetTrigger on Project__c (before insert, after insert) {
   
    new ProjectBudgetUpdate().run();

    //call the method
        

}


//Write a trigger to update the Project budget to $0 when the Status is switched to Inactive.

