/// This class uses normal Cache class storage. IT IS NOT MAPPED
/// It is a class representation of CLIENT data in the LIS (^DOC) and
/// is frequently updated by a background process.
/// As of 3/3/2010, all ^DOC levels should be reperesented here (and then some) - RMBYN
/// 
Class LIS.cClient Extends (%Persistent, %XML.Adaptor) [ Inheritance = right ]
{

// AtRisk indicates whether a client is at risk of leaving us

// Will be used to drive alerts to users so we will give the client and their patients more attention during calls into client service and at accessioning

Property AtRisk As %Boolean [ InitialExpression = 0 ];

Index AtRiskIndex On AtRisk;

Property Name As %String(MAXLEN = 50, TRUNCATE = 0);

Index NameIndex On Name As SqlUpper;

Property Code As %String(MAXLEN = 50, TRUNCATE = 0);

Index CodeIndex On Code [ Unique ];

// formerly Alternate Lookup in the LIS

Property AlphaListing As %String(MAXLEN = 1000, TRUNCATE = 0);

Index AlphaListingIndex On AlphaListing As SqlUpper;

Property Attn As %String(MAXLEN = 50, TRUNCATE = 0);

Property Address As Library.cAddress;

Property BillToAccount As %String(MAXLEN = 50, TRUNCATE = 0);

Property Billing As %String(MAXLEN = 50, TRUNCATE = 0);

Property RequestCustomBlank As %String(MAXLEN = 1000, TRUNCATE = 0);

/// ClientType indicates whether it is a "CLIENT" or "PROVIDER" in the TELCOR OIS
/// values are "C" or "P"
Property ClientType As %String(MAXLEN = 50, TRUNCATE = 0);

Index ClientTypeIndex On ClientType [ Type = bitslice ];

Property RequestCustomClinical As %String(MAXLEN = 1000, TRUNCATE = 0);

Property ContractExpiration As %String(MAXLEN = 50, TRUNCATE = 0);

Property CriticalValueInfo As %String(MAXLEN = 1000, TRUNCATE = 0);

Property CustomFields As %String(MAXLEN = 50, TRUNCATE = 0);

Property RequestFormCyto As %String(MAXLEN = 1000, TRUNCATE = 0);

Property DateStartedInfo As %String(MAXLEN = 1000, TRUNCATE = 0);

Property RequestCustomDrug As %String(MAXLEN = 1000, TRUNCATE = 0);

Property RequestFormDrug As %String(MAXLEN = 50, TRUNCATE = 0);

Property RequestFormClinical As %String(MAXLEN = 1000, TRUNCATE = 0);

Property NumberOfCopies As %String(MAXLEN = 1, TRUNCATE = 0);

Property PathologyCompany As %String(MAXLEN = 150, TRUNCATE = 1);

Property PatientAmbulatoryStatus As %String(MAXLEN = 50, TRUNCATE = 0);

Property PatientIDFormat As %String(MAXLEN = 50, TRUNCATE = 0);

Property PreliminaryReport1 As %String(MAXLEN = 50, TRUNCATE = 0);

Property PreliminaryReport2 As %String(MAXLEN = 50, TRUNCATE = 0);

Property ProviderNumber As %String(MAXLEN = 50, TRUNCATE = 0);

Property ReportFormat As %String(MAXLEN = 50, TRUNCATE = 0);

Index ReportFormatIndex On ReportFormat [ Type = bitslice ];

Property RevenueLocation As %String(MAXLEN = 50, TRUNCATE = 0);

Index RevenueLocationIndex On RevenueLocation [ Type = bitslice ];

Property Specialty As %String(MAXLEN = 50, TRUNCATE = 0);

Index SpecialtyIndex On Specialty [ Type = bitslice ];

Property SplitRevenue As %String(MAXLEN = 50, TRUNCATE = 0);

Property TimeZone As %String(MAXLEN = 50, TRUNCATE = 0);

Property GeneralInformation As %String(MAXLEN = 50, TRUNCATE = 0);

Property ComputerInstructions As %String(MAXLEN = 1000, TRUNCATE = 0);

Property MailStop As %String(MAXLEN = 50, TRUNCATE = 0);

Index MailStopIndex On MailStop [ Type = bitslice ];

Property OfficeInformation As %String(MAXLEN = 5000, TRUNCATE = 0);

Property RequestFormHealthFair As %String(MAXLEN = 50, TRUNCATE = 0);

Index RequestFormHealthFairIndex On RequestFormHealthFair [ Type = bitslice ];

Property Route As %String(MAXLEN = 50, TRUNCATE = 0);

Index RouteIndex On Route [ Type = bitslice ];

Property RequestFormRast As %String(MAXLEN = 50, TRUNCATE = 0);

Property Supplies As %String(MAXLEN = 1000, TRUNCATE = 0);

Property RequestFormSupply As %String(MAXLEN = 50, TRUNCATE = 0);

Property ServiceManual As %String(MAXLEN = 50, TRUNCATE = 0);

Index ServiceManualIndex On ServiceManual [ Type = bitslice ];

Property ChristmasCard As %String(MAXLEN = 50, TRUNCATE = 0);

Index ChristmasCardIndex On ChristmasCard [ Type = bitslice ];

Property ChristmasGift As %String(MAXLEN = 50, TRUNCATE = 0);

/// ICD9CodeBookQty indicates the number of ICD books the client gets from us.
Property ICD9CodeBookQty As %TinyInt;

Index ChristmasGiftIndex On ChristmasGift [ Type = bitslice ];

Property ChainOfTrust As %String(MAXLEN = 50, TRUNCATE = 0);

Property flgService As %Boolean [ InitialExpression = 0 ];

Storage Default
{
<Data name="cClientDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Code</Value>
</Value>
<Value name="4">
<Value>AlphaListing</Value>
</Value>
<Value name="5">
<Value>Attn</Value>
</Value>
<Value name="6">
<Value>FaxNumber</Value>
</Value>
<Value name="7">
<Value>PhoneNumber</Value>
</Value>
<Value name="8">
<Value>AddressCity</Value>
</Value>
<Value name="9">
<Value>AddressMail</Value>
</Value>
<Value name="10">
<Value>AddressState</Value>
</Value>
<Value name="11">
<Value>AddressStreet</Value>
</Value>
<Value name="12">
<Value>AddressZip</Value>
</Value>
<Value name="13">
<Value>BillToAccount</Value>
</Value>
<Value name="14">
<Value>Billing</Value>
</Value>
<Value name="15">
<Value>RequestCustomBlank</Value>
</Value>
<Value name="16">
<Value>ClientType</Value>
</Value>
<Value name="17">
<Value>RequestCustomClinical</Value>
</Value>
<Value name="18">
<Value>ContractExpiration</Value>
</Value>
<Value name="19">
<Value>CustomFields</Value>
</Value>
<Value name="20">
<Value>RequestFormCyto</Value>
</Value>
<Value name="21">
<Value>DateStartedInfo</Value>
</Value>
<Value name="22">
<Value>RequestCustomDrug</Value>
</Value>
<Value name="23">
<Value>RequestFormDrug</Value>
</Value>
<Value name="24">
<Value>RequestFormClinical</Value>
</Value>
<Value name="25">
<Value>NumberOfCopies</Value>
</Value>
<Value name="26">
<Value>PatientAmbulatoryStatus</Value>
</Value>
<Value name="27">
<Value>PatientIDFormat</Value>
</Value>
<Value name="28">
<Value>PreliminaryReport1</Value>
</Value>
<Value name="29">
<Value>PreliminaryReport2</Value>
</Value>
<Value name="30">
<Value>ProviderNumber</Value>
</Value>
<Value name="31">
<Value>ReportFormat</Value>
</Value>
<Value name="32">
<Value>RevenueLocation</Value>
</Value>
<Value name="33">
<Value>Specialty</Value>
</Value>
<Value name="34">
<Value>SplitRevenue</Value>
</Value>
<Value name="35">
<Value>TimeZone</Value>
</Value>
<Value name="36">
<Value>GeneralInformation</Value>
</Value>
<Value name="37">
<Value>ComputerInstructions</Value>
</Value>
<Value name="38">
<Value>MailStop</Value>
</Value>
<Value name="39">
<Value>OfficeInformation</Value>
</Value>
<Value name="40">
<Value>RequestFormHealthFair</Value>
</Value>
<Value name="41">
<Value>Route</Value>
</Value>
<Value name="42">
<Value>RequestFormRast</Value>
</Value>
<Value name="43">
<Value>Supplies</Value>
</Value>
<Value name="44">
<Value>RequestFormSupply</Value>
</Value>
<Value name="45">
<Value>ServiceManual</Value>
</Value>
<Value name="46">
<Value>ChristmasCard</Value>
</Value>
<Value name="47">
<Value>ChristmasGift</Value>
</Value>
<Value name="48">
<Value>ChainOfTrust</Value>
</Value>
<Value name="49">
<Value>Address</Value>
</Value>
<Value name="50">
<Value>Active</Value>
</Value>
<Value name="51">
<Value>CriticalValueInfo</Value>
</Value>
<Value name="52">
<Value>OfficeInfo</Value>
</Value>
<Value name="53">
<Value>Type</Value>
</Value>
<Value name="54">
<Value>LabEntity</Value>
</Value>
<Value name="55">
<Value>PrelimMicrobiology</Value>
</Value>
<Value name="56">
<Value>PrelimClinical</Value>
</Value>
<Value name="57">
<Value>EMRVerification</Value>
</Value>
<Value name="58">
<Value>RequestSendTo</Value>
</Value>
<Value name="59">
<Value>CSR</Value>
</Value>
<Value name="60">
<Value>PathologyCompany</Value>
</Value>
<Value name="61">
<Value>ICD9CodeBookQty</Value>
</Value>
<Value name="62">
<Value>ClinicalFormType</Value>
</Value>
<Value name="63">
<Value>CytoPathFormType</Value>
</Value>
<Value name="64">
<Value>AtRisk</Value>
</Value>
<Value name="65">
<Value>flgService</Value>
</Value>
</Data>
<DataLocation>^LIS.cClientD</DataLocation>
<DefaultData>cClientDefaultData</DefaultData>
<ExtentSize>7164</ExtentSize>
<IdLocation>^LIS.cClientD</IdLocation>
<IndexLocation>^LIS.cClientI</IndexLocation>
<Property name="%%CLASSNAME">
<Selectivity>99.9992%</Selectivity>
</Property>
<Property name="%%ID">
<Selectivity>1</Selectivity>
</Property>
<Property name="Active">
<Selectivity>49.9998%</Selectivity>
</Property>
<Property name="Address">
<Selectivity>0.1251%,CellPhone:99.9992%,City:1.3436%,Comment:99.9992%,CompanyName:99.9992%,Country:99.9992%,CountyCode:99.9992%,Email1:99.9992%,Email2:99.9992%,Email3:99.9992%,GeneralInfo:99.9992%,HomeFax:99.9992%,HomePhone:99.9992%,Line1:0.2253%,Line2:3.8460%,PrimaryContact:99.9992%,PrimaryContactTitle:99.9992%,State:1.3514%,WorkFax:0.2627%,WorkPhone:0.1567%,Zip:0.9745%</Selectivity>
</Property>
<Property name="AlphaListing">
<Selectivity>0.5866%</Selectivity>
</Property>
<Property name="Attn">
<Selectivity>2.1654%</Selectivity>
</Property>
<Property name="BillToAccount">
<Selectivity>99.9992%</Selectivity>
</Property>
<Property name="Billing">
<Selectivity>99.9992%</Selectivity>
</Property>
<Property name="CSR">
<Selectivity>12.5000%</Selectivity>
</Property>
<Property name="ChainOfTrust">
<Selectivity>2.6285%</Selectivity>
</Property>
<Property name="ChristmasCard">
<Selectivity>33.3333%</Selectivity>
</Property>
<Property name="ChristmasGift">
<Selectivity>14.2857%</Selectivity>
</Property>
<Property name="ClientType">
<Selectivity>99.9992%</Selectivity>
</Property>
<Property name="Code">
<Selectivity>1</Selectivity>
</Property>
<Property name="ComputerInstructions">
<Selectivity>20.0000%</Selectivity>
</Property>
<Property name="ContractExpiration">
<Selectivity>99.9992%</Selectivity>
</Property>
<Property name="CriticalValueInfo">
<Selectivity>1.6413%</Selectivity>
</Property>
<Property name="CustomFields">
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="DateStartedInfo">
<Selectivity>0.2119%</Selectivity>
</Property>
<Property name="EMRVerification">
<Selectivity>7.6923%</Selectivity>
</Property>
<Property name="GeneralInformation">
<Selectivity>99.9992%</Selectivity>
</Property>
<Property name="ICD9CodeBookQty">
<Selectivity>49.9998%</Selectivity>
</Property>
<Property name="LabEntity">
<Selectivity>49.9998%</Selectivity>
</Property>
<Property name="MailStop">
<Selectivity>3.2250%</Selectivity>
</Property>
<Property name="Name">
<Selectivity>0.0386%</Selectivity>
</Property>
<Property name="NumberOfCopies">
<Selectivity>49.9998%</Selectivity>
</Property>
<Property name="OfficeInformation">
<Selectivity>1.0902%</Selectivity>
</Property>
<Property name="PathologyCompany">
<Selectivity>33.3333%</Selectivity>
</Property>
<Property name="PatientAmbulatoryStatus">
<Selectivity>49.9998%</Selectivity>
</Property>
<Property name="PatientIDFormat">
<Selectivity>99.9992%</Selectivity>
</Property>
<Property name="PrelimClinical">
<Selectivity>8.3333%</Selectivity>
</Property>
<Property name="PrelimMicrobiology">
<Selectivity>49.9998%</Selectivity>
</Property>
<Property name="PreliminaryReport1">
<Selectivity>99.9992%</Selectivity>
</Property>
<Property name="PreliminaryReport2">
<Selectivity>99.9992%</Selectivity>
</Property>
<Property name="ProviderNumber">
<Selectivity>99.9992%</Selectivity>
</Property>
<Property name="ReportFormat">
<Selectivity>49.9998%</Selectivity>
</Property>
<Property name="RequestCustomBlank">
<Selectivity>99.9992%</Selectivity>
</Property>
<Property name="RequestCustomClinical">
<Selectivity>2.5605%</Selectivity>
</Property>
<Property name="RequestCustomDrug">
<Selectivity>11.1111%</Selectivity>
</Property>
<Property name="RequestFormClinical">
<Selectivity>1.4324%</Selectivity>
</Property>
<Property name="RequestFormCyto">
<Selectivity>9.0909%</Selectivity>
</Property>
<Property name="RequestFormDrug">
<Selectivity>5.8824%</Selectivity>
</Property>
<Property name="RequestFormHealthFair">
<Selectivity>49.9998%</Selectivity>
</Property>
<Property name="RequestFormRast">
<Selectivity>49.9998%</Selectivity>
</Property>
<Property name="RequestFormSupply">
<Selectivity>4.3478%</Selectivity>
</Property>
<Property name="RequestSendTo">
<Selectivity>14.2857%</Selectivity>
</Property>
<Property name="RevenueLocation">
<Selectivity>99.9992%</Selectivity>
</Property>
<Property name="Route">
<Selectivity>0.7548%</Selectivity>
</Property>
<Property name="ServiceManual">
<Selectivity>33.3333%</Selectivity>
</Property>
<Property name="Specialty">
<Selectivity>99.9992%</Selectivity>
</Property>
<Property name="SplitRevenue">
<Selectivity>99.9992%</Selectivity>
</Property>
<Property name="Supplies">
<Selectivity>33.3333%</Selectivity>
</Property>
<Property name="TimeZone">
<Selectivity>49.9998%</Selectivity>
</Property>
<Property name="Type">
<Selectivity>49.9998%</Selectivity>
</Property>
<StreamLocation>^LIS.cClientS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

Index ChainOfTrustIndex On ChainOfTrust [ Type = bitslice ];

Property Active As %Boolean;

Index ActiveIndex On Active [ Type = bitslice ];

/// Is this client file a provider or clinic
Property Type As %String;

Index TypeIndex On Type;

Property LabEntity As %String;

Index LabEntityIndex On LabEntity;

Property PrelimMicrobiology As %String;

Property PrelimClinical As %String;

Property EMRVerification As %String(MAXLEN = 1000);

Property RequestSendTo As %String(MAXLEN = 1000);

Property CSR As %String;

Index CSRIndex On CSR;

Property ClinicalFormType As %String(MAXLEN = 25);

Property CytoPathFormType As %String(MAXLEN = 25);

/// Allows you to instantly instantiate an accession by passing its DNO
/// Example usage: s oPatient=##class(LIS.cClient).OpenDNO(9021)
ClassMethod OpenDNO(DNO As %BigInt) As %ObjectHandle
{
	S ClientOID=##class(LIS.cClient).GetOID(DNO)
	S oClient=##class(LIS.cClient).%OpenId(ClientOID)
	Q oClient
}

/// Pass the DNO and this returns the client's OID
ClassMethod GetOID(DNO As %BigInt) As %Integer
{
	S sql="SELECT ID FROM LIS.cClient WHERE Code = '"_DNO_"'"
	S rset=##class(%ResultSet).%New()
	S sc=rset.Prepare(sql) ;I 'sc Q  -1  ;w !!,"sql Prepare() failed! ",sc,! Q -1
	S sc=rset.Execute() ;I 'sc Q -2  ;w !!,"sql Execute() failed! ",sc,! Q -2
	I rset.Next() Q rset.Data("ID")
	Q ""
}

///  Pass this method a DNO and it returns teh client's name
ClassMethod GetName(DNO) As %String
{
	S DNA=""
	S sql="SELECT Code,Name FROM LIS.cClient WHERE Code='"_DNO_"'"
	S rset=##class(%ResultSet).%New()
	S sc=rset.Prepare(sql) I 'sc Q -1 ; w !!,"sql Prepare() HealthDept.cHealthDept ailed! ",sc,! 
	S sc=rset.Execute() I 'sc Q -2  ;w !!,"sql Execute() failed! ",sc,! Q -2
	I rset.Next() S DNA=rset.Data("Name")
	Q DNA
}

/// Pass the DNO and this returns the Client's Lab Entity.
/// When Format=1, this method returns the value stored in the client file (currently a numeric value)
/// When Format=2, this method returns the name of the the Lab Entity
/// When Format=3, this method returns the short name of the the Lab Entity
ClassMethod GetLabEntity(DNO As %String, Format As %SmallInt) As %String
{

	S sql="SELECT Name,LabEntity FROM LIS.cClient WHERE Code = '"_DNO_"'"
	S rset=##class(%ResultSet).%New()
	S sc=rset.Prepare(sql) ;I 'sc Q  -1  ;w !!,"sql Prepare() failed! ",sc,! Q -1
	S sc=rset.Execute() ;I 'sc Q -2  ;w !!,"sql Execute() failed! ",sc,! Q -2
	I 'rset.Next() Q "  ERROR FINDING CLIENT "
	I Format=1 Q rset.Data("LabEntity")

	S LabEntity="Unknown"
	I Format=2 
		{
			I rset.Data("LabEntity")=1 S LabEntity="Interpath"
			I rset.Data("LabEntity")=2 S LabEntity="Mesa Clinical Lab"
		}
	I Format=3
		{
			I rset.Data("LabEntity")=1 S LabEntity="IPL"
			I rset.Data("LabEntity")=2 S LabEntity="CEH" ; MCL is stored under CEH in the billing system....
		}
	Q LabEntity
}

/// Rolls through ^MODIFIED("DNO",DNO) in LABCLA to see what DNOs have been modified and then loads the 
/// most common data required for patient queries and stores the data into a class.
/// 
///  ---- NOT ALL PROPERTIES ARE COPIED OUT OF ^DOC INTO THIS TABLE --- (but they could be if you would like to take the time)
/// 
/// Updates all client files
ClassMethod UpdateAll() As %Boolean
{
 S flgDebug=1
 S DNO="" F  S DNO=$O( ^DOC(DNO)) Q:DNO=""  D
 .S sc=..Update(DNO,flgDebug) I flgDebug w !,DNO,?15,sc
 .IF sc K ^MODIFIED("DNO",DNO) ;S $P(^MODIFIED("DNO",DNO),"^",1)=$zdt($h,3,1)
 Q 1
}

/// Updates only the accounts that have been modified
ClassMethod UpdateModified() As %Boolean
{
 s flgDebug=1
 ; ROLL THROUGH THE LIST OF MODIFIED DNO'S AND UPDATE LIS.cClient with the most current data.
 S DNO="" F  S DNO=$O(^MODIFIED("DNO",DNO)) Q:DNO=""  D
 .Q:$P(^MODIFIED("DNO",DNO),"^",1)'=""  ; skip this DNO if it was processed by the Zen server already ($P 1 is zen. $P 2 is ThreemileVS2)
 .S sc=..Update(DNO,flgDebug) I flgDebug w !,DNO,?15,sc
 .IF sc K ^MODIFIED("DNO",DNO) ; S $P(^MODIFIED("DNO",DNO),"^",1)=$zdt($h,3,1)
 Q 1
}

ClassMethod Update(DNO, flgDebug) As %Boolean [ ProcedureBlock = 1 ]
{
 S (cntUpdated,cntCreated)=0
 S StartTime=$zdt($h,3,1)
 K aDOC M aDOC=^DOC(DNO)
 I '$d(aDOC)  W !!,"NO DOC FOR CODE: ",DNO K ^MODIFIED("DNO",DNO) Q
 I (aDOC(4)'[",")&(aDOC(4)'="") D
 .;S ERR(1)="LIS.cClient.UpdateChanges() DNO:"_DNO,ERR(2)="Error Updating LIS.cClient class",ERR(3)="Invalid address" D ^LIB0016(.ERR) Q 0
 .S ToAddress="asieders@adaugeohealthcare.com,acomo@interpathlab.com,KNKennedy@Interpathlab.com,bsrobinson@interpathlab.com"
 .S FromAddress="cacheserver@adaugeohealthcare.com"
 .S Subject="Client File - Invalid Address"
 .S Body="<table width='600' style='font:15px arial'>"
 .S Body=Body_"<tr><td style='color:#ffffff;background-color:#3382CF' >"
 .S Body=Body_"Invalid address in Client File: "_DNO_" "_$G(^DOC(DNO,1))
 .S Body=Body_"</td></tr>"
 .S Body=Body_"<tr><td bgcolor='#fffacd'>"
 .S Body=Body_"Code: "_DNO_"<br/>"
 .S Body=Body_"Name: "_$G(^DOC(DNO,1))_"<br/>"
 .S Body=Body_"Line2: "_$G(^DOC(DNO,2))_"<br/>"
 .S Body=Body_"Line3: "_$G(^DOC(DNO,3))_"<br/>"
 .S Body=Body_"Line4: "_$G(^DOC(DNO,4))_"<br/>"
 .S Body=Body_"</td></tr>"
 .S Body=Body_"</table>"
 .S Body=Body_"<br/><br/><br/>Format needs to be CITY, ST ZIP"
 .S Body=Body_"<br/>It is important this is corrected for some of the Health Dept Reporting code to work."
 .S Body=Body_"<br/><br/><br/>This message was auto-generated by LIS.cClient.Update()"
 .S (Attachment,emailPriority)=""
 .S scSendEMail=##class(Library.Mail).SendEmail(ToAddress,FromAddress,Subject,Body,Attachment,emailPriority)

 ; check to see if the  Client/Provider is already on file. If so, update otherwise create a new one
 S ClientOID=##class(LIS.cClient).GetOID(DNO)
 I ClientOID'="" S oClient=##class(LIS.cClient).%OpenId(ClientOID) S cntUpdated=$I(cntUpdated) I flgDebug W ?50,"  updated  ClientOID:",ClientOID
 I ClientOID="" S oClient=##class(LIS.cClient).%New() S cntCreated=$I(cntCreated) I flgDebug W !?45," created ClientOID",ClientOID
 S oClient.Code=DNO
 S oClient.Attn=aDOC(0)
 S oClient.Name=aDOC(1)
 S oClient.Address.Line1=aDOC(2)
 S oClient.Address.Line2=aDOC(3)
 S oClient.Route=aDOC(6)
 S oClient.MailStop=aDOC(7)
 S oClient.Address.WorkPhone=aDOC(5)
 S oClient.Address.WorkFax=aDOC(8)
 S oClient.Address.City=$P(aDOC(4),", ",1)
 S StateZip=$P(aDOC(4),", ",2)
 S oClient.Address.State=$P(StateZip," ",1)
 S oClient.Address.Zip=$P(StateZip," ",2)
 S oClient.CriticalValueInfo=aDOC(11)
 S oClient.ComputerInstructions=aDOC(12)
 S oClient.OfficeInformation=aDOC(15)
 S oClient.Supplies=aDOC(16)
 S oClient.AtRisk=$S(aDOC(17)="Y":1,1:0)
 S oClient.Type=aDOC(21)
 ;I flgDebug zw aDOC
 I aDOC(25)'="X" S oClient.AlphaListing=$E(aDOC(25),1,900) i $L(aDOC(25))>901 s oClient.AlphaListing=oClient.AlphaListing_"..."
 S oClient.Active=1 I aDOC(25)="X" S oClient.Active=0  ;  Accounts with alpha listing =X in ^DOC have been disabled
 S oClient.RequestCustomClinical=aDOC(35)
 S oClient.RequestCustomDrug=aDOC(36)
 S oClient.RequestCustomBlank=aDOC(37)
 S oClient.PatientAmbulatoryStatus=aDOC(38)
 S oClient.PathologyCompany=aDOC(39)
 S oClient.ReportFormat=aDOC(40)
 S oClient.LabEntity=aDOC(41)
 S oClient.TimeZone=aDOC(42)
 S oClient.PrelimMicrobiology=aDOC(44)
 S oClient.PrelimClinical=aDOC(45)
 S oClient.CustomFields=aDOC(46)
 S oClient.EMRVerification=aDOC(47)
 S oClient.NumberOfCopies=aDOC(50)
 S oClient.DateStartedInfo=aDOC(75)
 S oClient.RequestFormClinical=aDOC(80)
 S oClient.RequestFormCyto=aDOC(81)
 S oClient.RequestFormDrug=aDOC(82)
 S oClient.RequestFormHealthFair=aDOC(83)
 S oClient.RequestFormSupply=aDOC(84)
 S oClient.RequestFormRast=aDOC(85)
 
 S oClient.ClinicalFormType=$S(aDOC(86)=1:"Clinical Req",aDOC(86)=2:"Combo Req",aDOC(86)=3:"1 Part Blank Clinical Req",aDOC(86)=4:"CHI Meditech Req",1:"UNKOWN")
 S oClient.CytoPathFormType=$S(aDOC(87)=1:"MLA Req",aDOC(87)=2:"BMP Req",1:"UNKNOWN")

 
 S oClient.RequestSendTo=aDOC(90)
 S oClient.ServiceManual=$g(aDOC(91))
 S oClient.ChristmasCard=$G(aDOC(92))
 S oClient.ChristmasGift=$G(aDOC(93))
 S oClient.ChainOfTrust=$G(aDOC(94))
 S oClient.ICD9CodeBookQty=$G(aDOC(95))
 S oClient.flgService=aDOC(119)
 S oClient.CSR=##CLASS(ClientDatabase.ClientDB).GetCSR(DNO)  ; Pull the current CSR out of the client databse 
 S sc=oClient.%Save() 
 I 'sc D  Q 0
 .I flgDebug zw  W !!,$system.OBJ.DisplayError(sc) S Error=sc
 .S VAR(1)="LIS.cClient.UpdateChanges()",VAR(2)="Error Updating cClient Index for "_DNO,VAR(3)=sc
 .D ^LIB0016(.VAR) 
 .W !! D $system.OBJ.Dump(oClient) w !!
 Q 1
}

ClassMethod GetWorkPhone(DNO) As %String
{
	S WorkPhone=""
	S oClient=##class(LIS.cClient).OpenDNO(DNO)
	I $ISOBJECT(oClient) S WorkPhone=oClient.Address.WorkPhone
	k oClient
	Q WorkPhone
}

ClassMethod GetNPI(DNO) As %String
{
	S sql="SELECT NPI FROM dbo.tblProvider where dbo.tblProvider.Code='"_DNO_"'"
	S rset=##class(%ResultSet).%New()
	S sc=rset.Prepare(sql) ;I 'sc Q  -1  ;w !!,"sql Prepare() failed! ",sc,! Q -1
	S sc=rset.Execute() ;I 'sc Q -2  ;w !!,"sql Execute() failed! ",sc,! Q -2
	I 'rset.Next() Q ""
	Q rset.Data("NPI")
}

}

