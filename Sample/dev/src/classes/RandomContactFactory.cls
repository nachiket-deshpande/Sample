Public Class RandomContactFactory{

    public static List<Contact> generateRandomContacts(Integer numContacts,String SampleLastName){
        List<Contact> Contcts = new List<Contact>();        
        for(Integer i=0; i<numContacts; i++) {
            Contact c = new Contact(FirstName='FirstName '+i, LastName = SampleLastName);
            Contcts.add(c);
        }
        return Contcts;
    }


}