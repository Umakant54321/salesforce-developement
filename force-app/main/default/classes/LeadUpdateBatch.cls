global class LeadUpdateBatch implements Database.Batchable<sObject>
{
    //Start will execute only once
    //start : collects the records or objects to pass to the interface methods.
    //"execute"
    //This is the first method which is called when we executes a batch apex.
    //It returns a Dabase.QueryLocator object that contains the record passes to the Job. 
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator([Select AnnualRevenue from Lead]);
    }   
    //Execute method executes that depends how much batches are going to be run.
    //Execute:  use the Execute method to do the required processing of each chunks of the Data.
    //This method is call for each chunk/batch of record of which you pass through.
    global void execute(Database.BatchableContext bc,List<Lead> lList)
    {
        for(Lead l:lList)
        {
            l.AnnualRevenue = 2000000;
        }
        update lList;
    }
    //finish also will execute only once 
    //Finish : This method is called after all the batches are processed. 
    //Generally we write the code inside it to send a Confirmation email or execute any post processing operations. 
    global void finish(Database.BatchableContext bc)
    {
        //To send an email using code.
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddress = new String[]{'bhongademohit@gmail.com','umakantmahalle@gmail.com'};
            mail.setToAddresses(toAddress);
            mail.setSubject('Batch Job Completed');
            mail.setPlainTextBody('Hey, The Batch Job you started has been successfully Completed.');
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
        
    }
}
//to Run this Apex batch : Debug -> : Asunchronus window :-> create the object of batch apex class 
//LeadUpdateBatch lub = new LeadUpdateBatch();
//Database.ExecuteBatch(lub);