public class ServerClass {
    @AuraEnabled
    public static void createAcc(String cname,String ccity,String phone){
        Account c = new Account();
       c.Name = cname;
        c.BillingCity = ccity;
        c.Phone = phone;
        
        insert c;
    }
}