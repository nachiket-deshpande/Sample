@isTest

public class TestVerifyDate {
    
    @isTest static void TestMethod1() {
        Date pri = VerifyDate.CheckDates(System.today(),System.today()+3);
        System.assertEquals(System.today()+3, pri);
    }
    
    @isTest static void TestMethod2() {
        Date pri = VerifyDate.CheckDates(System.today(),System.today()+33);
        system.debug('--pri---->'+pri);
        System.assertEquals(System.today()+22, pri);
    }    
   
}