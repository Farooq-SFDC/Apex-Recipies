public with sharing class ContactsUtill {
    @AuraEnabled
    public static List<Contact> getContactList(){
        List<Contact> contactList = new List<Contact>();
        try {
            contactList = [SELECT Id,Name FROM Contact];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return contactList;
    }
}