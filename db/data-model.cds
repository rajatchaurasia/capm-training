using {
  Currency,
  managed
} from '@sap/cds/common';

namespace com.infy.mycapapp;

///// Enums ///////////

type Colour : String enum {
  blue; pink;
}

/////////////////////


/////// type /////////

type EmpId : Integer64;

/////////////////

////// Structured Types /////////

type OfficeAddresses : many {

  city : String(20);
  pinCode: Integer;

}

////////////////////////

///////////////////////Unmanaged Associations/////////////////////////

entity Employees_Unmanaged {

  key EmployeeId : EmpId;
  EmpName : String(20) not null;
  OfficeAddr : type of EmpName default 'HYD';
  address : Association to Addresses_Unmanaged on address.Id = Addresses_Id;
  Addresses_Id : Integer null ;// foreign Key

}

entity Addresses_Unmanaged {
  key Id      : Integer;
      PinCode : Integer;
      City    : String(20);
      OfficeColour : Colour;

}

/////////////////////////////////////////////


///////////// Managed Associations//////////////


entity Employees_Managed {
  key EmployeeId : EmpId;
  EmpName : String(20) not null;
  OfficeAddr : type of EmpName default 'HYD';
  address : Composition of many Addresses_Managed on address.employee = $self;
  

}

entity Addresses_Managed {
  key Id      : Integer;
      PinCode : Integer;
      City    : String(20);
      employee: Association to Employees_Managed
}

//////////////////////////////////////