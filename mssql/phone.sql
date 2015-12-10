--附 MSSQL导入方法:

--创建表 最新手机号段归属地数据库

--字段：前三位 号段 省份 城市 运营商 区号 邮编 类型

CREATE TABLE [dbo].[PhoneLocation](
 [pref] [varchar](50) NULL,
 [phone] [varchar](50) NULL,
 [province] [varchar](50) NULL,
 [city] [varchar](50) NULL,
 [isp] [varchar](50) NULL,
 [code] [varchar](50) NULL,
 [zip] [varchar](50) NULL,
 [types] [varchar](50) NULL
)

--导入数据库
BULK INSERT dbo.[PhoneLocation]
FROM 'G:\IP数据库\PhoneLocation.txt' 
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n'
)


--查询
SELECT  * FROM dbo.PhoneLocation WHERE phone='1886999'