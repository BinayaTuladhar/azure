select top 100  m1.ACCOUNT, m1.state, M1.HOME_PHONE,m1.CELL_PHONE,CAST(Last_contact_Date AS DATE) ,   CAST(getdate() -43  AS DATE),   M1.*	
	from [collect].[dbo].[M01] m1 WITH (READUNCOMMITTED)
where CAST(Last_contact_Date AS DATE) = CAST(getdate() -91 AS DATE)
--and m1.state = 'wv'
and M1.SRCE_ACCT_STATUS_1 IN ('AL' )
--and (HOME_PHONE <>'0000000000' and HOME_PHONE is not  Null and ISNUMERIC(HOME_PHONE) = 1)
--and (CELL_PHONE <>'0000000000' and CELL_PHONE is not  Null and ISNUMERIC(CELL_PHONE) = 1)
and  ACCOUNT= '00000100134487270001'



SElect * FROM   [CBContacts].[dbo].[ContactDispositions] cd 
where   mediumType = 'phone'   
and [accountID] = '00000100130172170001'
order by contactDate desc 

select max(id)+1 from  [CBContacts].[dbo].[ContactDispositions]

insert into 
[CBContacts].[dbo].[ContactDispositions]

Select 
	   '00000100134487270001' --[accountID]
      ,'3043604791'
      ,'Phone'
      ,'Test Dialer'
      ,'1'
      ,'185829'
      ,[dispositionID]
      ,'0'
      ,'testing WV'
      ,getdate ()   --CAST(cbcustom.dbo.sfnCurrentGLDate()   AS DATE) 
      ,[contactTime]
  FROM [CBContacts].[dbo].[ContactDispositions]   where ID = '7146'

  accountID ='00000100134487270001'
  