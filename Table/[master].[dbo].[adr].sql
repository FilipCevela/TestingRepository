create table dbo.adr (
  ADDRESS_ID int null,
  ADDRESS varchar(59) null,
  ADDRESS_LINE_2 varchar(50) null,
  CITY varchar(55) null,
  STATE varchar(50) null,
  COUNTRY varchar(53) null,
  POSTAL_CODE int null,
  REGION_ID int null
)
lock allpages
with compression = None,
 lob_compression = Off,
 index_compression = None, 
 erase residual data off
 on 'default'
 partition by roundrobin(
adr_729050602 on 'default')
