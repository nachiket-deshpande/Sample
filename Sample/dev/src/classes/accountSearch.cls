public with sharing class accountSearch {
    
    //Global Variables.
    //Test
    public String strAccountName{get;set;}
    
    public Boolean boolShowMsg {get;set;}
    public Boolean boolShowUpdate {get;set;}
    public Boolean boolShowInfo {get;set;}    
    public Boolean boolShowClear {get;set;}
    
    public List<Account> lstAccount {get;set;}
    public String strSearchedMemsJSON;
    
    String strResBody;
    
    public accountSearch() {     
       boolShowUpdate = FALSE; 
       boolShowInfo = FALSE;
    }
    
    /******************************
    ### method for fetching Account
    */
    public void searchButtonClicked() {
        lstAccount = new List<Account>();
       
       /******Checking for member id *******/
        if(strAccountName != null && strAccountName != '') {
            String strSearch = '%'+strAccountName+'%';
            lstAccount = [SELECT Id, Name, Industry, Phone, AccountNumber, DunsNumber FROM Account WHERE Name like :strSearch];
            boolShowUpdate = FALSE;
            boolShowInfo = TRUE;
            boolShowClear = TRUE;
        }
        else {
            /******Search field left empty*******/
            boolShowUpdate = TRUE;
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.INFO,'Please enter Account Name');
            ApexPages.addMessage(myMsg);
        }
    }
    
    /******************************
    ### method for clearing search field for member id
    */
    public void ClearAccount(){
       boolShowUpdate = False;
       lstAccount = new List<Account>();
       strAccountName = null;
       boolShowClear = FALSE;
    }
}