using com.infy.mycapapp as my from '../db/data-model';

service CapmService {
    entity Employees_Unmanaged as projection on my.Employees_Unmanaged;
    entity Addresses_Unmanaged as projection on my.Addresses_Unmanaged;
    
    entity Addresses_Managed   as projection on my.Addresses_Managed;

    entity EmployeeSet as select from my.Employees_Managed {
        EmployeeId,
        EmpName as EployeeName
    }

    entity 


// entity BookSet as projection on my.Books;
}
