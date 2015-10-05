/*
* Controller to implement the auto-complete feature on the Visualforce page
*/
public with sharing class autoCompleteController {
    
    // Instance fields
    public String searchTerm {get; set;}
    public String selectedAccount {get; set;}
    
    // Constructor
    public AutoCompleteController() {
        
    }
    
    // JS Remoting action called when searching for a movie name
    @RemoteAction
    public static List<Account> searchAccount(String searchTerm) {
        System.debug('AccountName is: '+searchTerm );
        List<Account> lstAccount = Database.query('Select Id, Name from Account where Name like \'%' + String.escapeSingleQuotes(searchTerm) + '%\'');
        return lstAccount;
    }
    
}