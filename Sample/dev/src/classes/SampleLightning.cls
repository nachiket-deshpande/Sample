public class SampleLightning {
	@AuraEnabled
    public Static list<Account> getAccounts(){
    	return [select id,name from Account limit 10];
    
    }
}