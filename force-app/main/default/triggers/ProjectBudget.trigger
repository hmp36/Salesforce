trigger ProjectBudget on Project (before insert, after update) {
     
    for (Project__c project : projects) {
        if (projects.Status__c == 'Inactive') {
            project.Budget__c = 0;
        }

    //call the method
        

}


//Write a trigger to update the Project budget to $0 when the Status is switched to Inactive.
}