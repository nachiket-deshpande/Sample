@isTest 
private class testClassForLDSComponent {
    static testMethod void searchAccount() {
       Account objAccount = new Account(Name='testAccount', Industry='IT', Phone='123456789', AccountNumber='1234', DunsNumber='134');
       insert objAccount;
       
       accountSearch objAcSearch = new accountSearch();
       objAcSearch.strAccountName = 'test';
       objAcSearch.searchButtonClicked();
       objAcSearch.ClearAccount();
    }
    
    static testMethod void autocomplete() {
       Account objAccount = new Account(Name='testAccount', Industry='IT', Phone='1234567890', AccountNumber='1234', DunsNumber='134');
       insert objAccount;
       autoCompleteController objACC = new autoCompleteController();
       objACC.searchTerm = 'test';
       autoCompleteController.searchAccount('test');
    }
}