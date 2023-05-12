public with sharing class ProjectBudgetUpdate {
    public static void updateBudget (List<Project__c> projects ) {

        for (Project__c project : projects) {
            if (projects.Status__c == 'Inactive') {
                project.Budget__c = 0;
            }
        }
    }
}
