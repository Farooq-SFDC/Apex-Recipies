public with sharing class ContactController {
    @AuraEnabled
    public static List<Contact> getContactList() {
        return [SELECT ID,Name from Contact];
    }
}