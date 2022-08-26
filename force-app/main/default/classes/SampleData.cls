public with sharing class SampleData {
    public SampleData() {

    }

    public static void CreateData() {

        try {
            
            Account acc1 = new Account(Name='The Bank of NewYork Mellon');
            insert acc1;

            Account acc2 = new Account(Name='Wells Fargo');
            insert acc2;

            Account acc3 = new Account(Name='Star ship');
            insert acc3;

            

            List<Contact> contacts = new List<Contact>();
            Contact con1 = new Contact(Salutation='Ms.', FirstName='Nataliex',
                                    LastName='Portman', AccountId=acc1.id, Email='testcontact1@lightning.com');
            Contact con2 = new Contact(Salutation='Mr.', FirstName='Han ',
                                    LastName='Solo', AccountId=acc1.id, Email='testcontact2@lightning.com');
            Contact con3 = new Contact(Salutation='Ms.', FirstName='Leia',
                                    LastName='Organa', AccountId=acc1.id, Email='testcontact3@lightning.com');
            Contact con4 = new Contact(Salutation='Ms.', FirstName=' Karen',
                                    LastName='Allen', AccountId=acc1.id, Email='testcontact4@lightning.com');
            Contact con5 = new Contact(Salutation='Mr.', FirstName=' Grand',
                                    LastName=' Moff Tarkin', AccountId=acc1.id, Email='testcontact5@lightning.com');
            Contact con6 = new Contact(Salutation='Mr.', FirstName='Obi-Wan',
                                    LastName='Kenobi', AccountId=acc1.id, Email='testcontact6@lightning.com');
            Contact con7 = new Contact(Salutation='Mr.', FirstName='Anthony',
                                    LastName='Anthony Daniels', AccountId=acc1.id, Email='testcontact7@lightning.com');
            Contact con8 = new Contact(Salutation='Mr.', FirstName='Kenny',
                                    LastName='Baker', AccountId=acc1.id, Email='testcontact8@lightning.com');
            Contact con9 = new Contact(Salutation='Mr.', FirstName='Peter',
                                    LastName='Mayhew', AccountId=acc2.id, Email='testcontact9@lightning.com');
            Contact con10 = new Contact(Salutation='Mr.', FirstName=' Darth',
                                    LastName='Vader', AccountId=acc2.id, Email='testcontact10@lightning.com');
            Contact con11 = new Contact(Salutation='Mr.', FirstName='Phil',
                                    LastName='Brown', AccountId=acc2.id, Email='testcontact11@lightning.com'); 
            Contact con12 = new Contact(Salutation='Ms.', FirstName='George',
                                    LastName='Lucas', AccountId=acc2.id, Email='testcontact12@lightning.com'); 
            Contact con13 = new Contact(Salutation='Ms.', FirstName='Keira',
                                    LastName='Knightley', AccountId=acc2.id, Email='testcontact13@lightning.com'); 
            Contact con14 = new Contact(Salutation='Ms.', FirstName='Laura',
                                    LastName='Dern', AccountId=acc2.id, Email='testcontact14@lightning.com'); 
            Contact con15 = new Contact(Salutation='Mr.', FirstName='Matt',
                                        LastName='Smith', AccountId=acc2.id, Email='testcontact15@lightning.com');
            Contact con16 = new Contact(Salutation='Ms.', FirstName='Billie',
                                        LastName='Lourd', AccountId=acc2.id, Email='testcontact16@lightning.com');
            Contact con17 = new Contact(Salutation='Ms.', FirstName='Jessica',
                                        LastName='Henwick', AccountId=acc3.id, Email='testcontact17@lightning.com');
            Contact con18 = new Contact(Salutation='Ms.', FirstName='Rose',
                                        LastName='Byrne', AccountId=acc3.id, Email='testcontact18@lightning.com');
            Contact con19 = new Contact(Salutation='Ms.', FirstName='Andy',
                                        LastName='Serkis', AccountId=acc3.id, Email='testcontact19@lightning.com');
            Contact con20 = new Contact(Salutation='Mr.', FirstName='Thomas',
                                        LastName='Brodie', AccountId=acc3.id, Email='testcontact20@lightning.com');
            Contact con21 = new Contact(Salutation='Mr.', FirstName='Bill',
                                        LastName='Hader', AccountId=acc3.id, Email='testcontact21@lightning.com');
            Contact con22 = new Contact(Salutation='Mr.', FirstName='Dave',
                                        LastName='Filoni', AccountId=acc3.id, Email='testcontact22@lightning.com');
            Contact con23 = new Contact(Salutation='Ms.', FirstName='Lupita ',
                                        LastName='Norway', AccountId=acc3.id, Email='testcontact23@lightning.com');
            Contact con24 = new Contact(Salutation='Ms.', FirstName='christie',
                                        LastName='Hathway', AccountId=acc3.id, Email='testcontact24@lightning.com');
            contacts.add(con1);
            contacts.add(con2);
            contacts.add(con3);
            contacts.add(con4);
            contacts.add(con5);
            contacts.add(con6);
            contacts.add(con7);
            contacts.add(con8);
            contacts.add(con9);
            contacts.add(con10);
            contacts.add(con11);
            contacts.add(con12);
            contacts.add(con13);
            contacts.add(con14);
            contacts.add(con15);
            contacts.add(con16);
            contacts.add(con17);
            contacts.add(con18);
            contacts.add(con19);
            contacts.add(con20);
            contacts.add(con21);
            contacts.add(con22);
            contacts.add(con23);
            contacts.add(con24);
            insert contacts;

            // Set 1
            Survey__c objSurvey1 = new Survey__c(Name='Project Closure Survey');
            insert  objSurvey1;

                       
            // Set 2
            Survey__c objSurvey2 = new Survey__c(Name='Customer Satisfaction Survey');
            insert  objSurvey2;
            
            // Set 3
            Survey__c objSurvey3 = new Survey__c(Name='Monthly Service Feedback');
            insert  objSurvey3;
            

        } catch (Exception ex) {
            throw new AuraHandledException(ex.getMessage());
        
        }
        
    }


    public static void ClearData() {
        

        List<Account> accs = [SELECT Id FROM Account WHERE Name IN ('The Bank of NewYork Mellon','Wells Fargo','Star ship')];
        delete accs;

        List<Survey__c> surveys = [SELECT Id FROM Survey__c WHERE Name IN ('Project Closure Survey','Customer Satisfaction Survey','Monthly Service Feedback')];
        delete surveys;
    }
    
}