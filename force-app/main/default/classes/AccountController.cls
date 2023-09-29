public with sharing class AccountController {
    @AuraEnabled
    public static List<Account> getAccountList() {
        return [SELECT ID,Name from Account];
    }
}