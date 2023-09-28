public class Assignment_testController {
	@AuraEnabled
    public static List<Account> getAccountDetails(String fields){
        List<Account> accList = Database.query('select '+fields+' from Account');
		return accList;
    }
}