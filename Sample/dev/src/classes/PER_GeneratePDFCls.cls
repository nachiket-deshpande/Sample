Global class PER_GeneratePDFCls{
    
    /*
     * Method name  : GeneratePDF
     * Description  : Used to Generate PDF for Sales Plan
     * Return Type  : void
     * Parameter    : nil
     */

    WebService static void GeneratePDF(string RecId){
       
        pagereference Pg = Page.PER_AutoPDF_Sample;
        pg.getParameters().put('id', RecId);
        //Blob SalesPlanPDF = pg.getcontentAsPdf();
        Attachment attach = new Attachment();
        //attach.contentType = 'PDF';
        if (Test.IsRunningTest())
            attach.Body=Blob.valueOf('UNIT.TEST');
        else    
            attach.Body = pg.getcontent();
        // add the user entered name
        attach.Name = 'SalesPanContract_'+system.now()+'.pdf';
        attach.IsPrivate = false;
        // attach the pdf to the account
        attach.ParentId = RecId;
        insert attach;
    }
}