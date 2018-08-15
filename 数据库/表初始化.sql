/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2018/8/15 11:29:14                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SysDepartment') and o.name = 'FK_SYSDEPAR_REFERENCE_SYSDEPAR')
alter table dbo.SysDepartment
   drop constraint FK_SYSDEPAR_REFERENCE_SYSDEPAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SysField') and o.name = 'FK_SYSFIELD_REFERENCE_SYSFIELD')
alter table dbo.SysField
   drop constraint FK_SYSFIELD_REFERENCE_SYSFIELD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SysMenu') and o.name = 'FK_SYSMENU_REFERENCE_SYSMENU')
alter table dbo.SysMenu
   drop constraint FK_SYSMENU_REFERENCE_SYSMENU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMenuSysOperation') and o.name = 'FK_SYSMENUS_REFERENCE_SYSMENU')
alter table SysMenuSysOperation
   drop constraint FK_SYSMENUS_REFERENCE_SYSMENU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMenuSysOperation') and o.name = 'FK_SYSMENUS_REFERENCE_SYSOPERA')
alter table SysMenuSysOperation
   drop constraint FK_SYSMENUS_REFERENCE_SYSOPERA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMenuSysRoleSysOperation') and o.name = 'FK_SYSMENUS_REFERENCE_SYSOPERA2')
alter table SysMenuSysRoleSysOperation
   drop constraint FK_SYSMENUS_REFERENCE_SYSOPERA2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMenuSysRoleSysOperation') and o.name = 'FK_SYSMENUS_REFERENCE_SYSROLE')
alter table SysMenuSysRoleSysOperation
   drop constraint FK_SYSMENUS_REFERENCE_SYSROLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysMenuSysRoleSysOperation') and o.name = 'FK_SYSMENUS_REFERENCE_SYSMENU2')
alter table SysMenuSysRoleSysOperation
   drop constraint FK_SYSMENUS_REFERENCE_SYSMENU2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SysPerson') and o.name = 'FK_SYSPERSO_REFERENCE_SYSDEPAR')
alter table dbo.SysPerson
   drop constraint FK_SYSPERSO_REFERENCE_SYSDEPAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SysRoleSysPerson') and o.name = 'FK_SYSROLES_REFERENCE_SYSPERSO')
alter table dbo.SysRoleSysPerson
   drop constraint FK_SYSROLES_REFERENCE_SYSPERSO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SysRoleSysPerson') and o.name = 'FK_SYSROLES_REFERENCE_SYSROLE')
alter table dbo.SysRoleSysPerson
   drop constraint FK_SYSROLES_REFERENCE_SYSROLE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FileUploader')
            and   type = 'U')
   drop table FileUploader
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysDepartment')
            and   type = 'U')
   drop table dbo.SysDepartment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysException')
            and   type = 'U')
   drop table dbo.SysException
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('dbo.SysField')
            and   name  = 'Index_1'
            and   indid > 0
            and   indid < 255)
   drop index dbo.SysField.Index_1
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysField')
            and   type = 'U')
   drop table dbo.SysField
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysLog')
            and   type = 'U')
   drop table dbo.SysLog
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysMenu')
            and   type = 'U')
   drop table dbo.SysMenu
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysMenuSysOperation')
            and   type = 'U')
   drop table SysMenuSysOperation
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysMenuSysRoleSysOperation')
            and   type = 'U')
   drop table SysMenuSysRoleSysOperation
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysOperation')
            and   type = 'U')
   drop table SysOperation
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('dbo.SysPerson')
            and   name  = 'Index_1'
            and   indid > 0
            and   indid < 255)
   drop index dbo.SysPerson.Index_1
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysPerson')
            and   type = 'U')
   drop table dbo.SysPerson
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysRole')
            and   type = 'U')
   drop table dbo.SysRole
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SysRoleSysPerson')
            and   type = 'U')
   drop table dbo.SysRoleSysPerson
go

/*==============================================================*/
/* Table: FileUploader                                          */
/*==============================================================*/
create table FileUploader (
   Id                   nvarchar(36)         not null,
   [Name]                 nvarchar(200)        null,
   Path                 nvarchar(200)        null,
   FullPath             varchar(500)         null,
   Suffix               nvarchar(200)        null,
   Size                 int                  null,
   Remark               nvarchar(4000)       null,
   State                nvarchar(200)        null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        null,
   Identification       nvarchar(200)        null,
   constraint PK_FILEUPLOADER primary key (Id)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FileUploader')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Research',
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FileUploader')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FileUploader', 'column', 'CreateTime'

end





/*==============================================================*/
/* Table: SysDepartment                                         */
/*==============================================================*/
create table dbo.SysDepartment (
   Id                   nvarchar(36)         not null,
   Name                 nvarchar(200)        not null,
   ParentId             nvarchar(36)         null,
   Address              nvarchar(200)        null,
   Sort                 int                  null,
   Remark               nvarchar(4000)       null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        null,
   UpdateTime           datetime             null,
   UpdatePerson         nvarchar(200)        null,
   Identification       nvarchar(200)        null,
   constraint PK_SYSDEPARTMENT primary key nonclustered (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysDepartment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'Name'

end


execute sp_addextendedproperty 'MS_Description', 
   'Research',
   'user', 'dbo', 'table', 'SysDepartment', 'column', 'Name'
go

/*==============================================================*/
/* Table: SysException                                          */
/*==============================================================*/
create table dbo.SysException (
   Id                   nvarchar(36)         not null,
   LeiXing              nvarchar(200)        null,
   Message              nvarchar(4000)       null,
   Result               nvarchar(200)        null,
   Remark               nvarchar(4000)       null,
   State                nvarchar(200)        null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        null,
   Identification       nvarchar(200)        null,
   constraint PK_SYSEXCEPTION primary key nonclustered (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysException')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Message')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysException', 'column', 'Message'

end


execute sp_addextendedproperty 'MS_Description', 
   'Research',
   'user', 'dbo', 'table', 'SysException', 'column', 'Message'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysException')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysException', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   'Research',
   'user', 'dbo', 'table', 'SysException', 'column', 'CreateTime'
go

/*==============================================================*/
/* Table: SysField                                              */
/*==============================================================*/
create table dbo.SysField (
   Id                   nvarchar(36)         not null,
   MyTexts              nvarchar(200)        not null,
   ParentId             nvarchar(36)         null,
   MyTables             nvarchar(200)        null,
   MyColums             nvarchar(200)        null,
   Sort                 int                  null,
   Remark               nvarchar(4000)       null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        null,
   UpdateTime           datetime             null,
   UpdatePerson         nvarchar(200)        null,
   Identification       nvarchar(200)        null,
   constraint PK_SYSFIELD primary key nonclustered (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysField')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MyTexts')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysField', 'column', 'MyTexts'

end


execute sp_addextendedproperty 'MS_Description', 
   'Research',
   'user', 'dbo', 'table', 'SysField', 'column', 'MyTexts'
go

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create index Index_1 on dbo.SysField (
MyTables ASC,
MyColums ASC
)
go

/*==============================================================*/
/* Table: SysLog                                                */
/*==============================================================*/
create table dbo.SysLog (
   Id                   nvarchar(36)         not null,
   PersonId             nvarchar(36)         null,
   Message              nvarchar(4000)       null,
   Result               nvarchar(200)        null,
   MenuId               nvarchar(36)         null,
   Ip                   nvarchar(200)        null,
   Remark               nvarchar(4000)       null,
   State                nvarchar(200)        null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        null,
   Identification       nvarchar(200)        null,
   constraint PK_SYSLOG primary key nonclustered (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Message')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysLog', 'column', 'Message'

end


execute sp_addextendedproperty 'MS_Description', 
   'Research',
   'user', 'dbo', 'table', 'SysLog', 'column', 'Message'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Ip')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysLog', 'column', 'Ip'

end


execute sp_addextendedproperty 'MS_Description', 
   'Research',
   'user', 'dbo', 'table', 'SysLog', 'column', 'Ip'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysLog', 'column', 'State'

end


execute sp_addextendedproperty 'MS_Description', 
   'ResearchDropDown',
   'user', 'dbo', 'table', 'SysLog', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysLog', 'column', 'CreateTime'

end


execute sp_addextendedproperty 'MS_Description', 
   'Research',
   'user', 'dbo', 'table', 'SysLog', 'column', 'CreateTime'
go

/*==============================================================*/
/* Table: SysMenu                                               */
/*==============================================================*/
create table dbo.SysMenu (
   Id                   nvarchar(36)         not null,
   Name                 nvarchar(200)        not null,
   ParentId             nvarchar(36)         null,
   Url                  nvarchar(200)        null,
   Iconic               nvarchar(200)        null,
   Sort                 int                  null,
   Remark               nvarchar(4000)       null,
   State                nvarchar(200)        null,
   CreatePerson         nvarchar(200)        null,
   CreateTime           datetime             null,
   UpdateTime           datetime             null,
   UpdatePerson         nvarchar(200)        null,
   IsLeaf               nvarchar(200)        null,
   Identification       nvarchar(200)        null,
   constraint PK_SYSMENU primary key (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('dbo.SysMenu') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'user', 'dbo', 'table', 'SysMenu' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   'µ¼º½À¸', 
   'user', 'dbo', 'table', 'SysMenu'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'Name'

end


execute sp_addextendedproperty 'MS_Description', 
   'Research',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysMenu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysMenu', 'column', 'State'

end


execute sp_addextendedproperty 'MS_Description', 
   'RadioButtonResearch',
   'user', 'dbo', 'table', 'SysMenu', 'column', 'State'
go

/*==============================================================*/
/* Table: SysMenuSysOperation                                   */
/*==============================================================*/
create table SysMenuSysOperation (
   SysMenuId            nvarchar(36)         not null,
   SysOperationId       nvarchar(36)         not null,
   constraint PK_SYSMENUSYSOPERATION primary key (SysMenuId, SysOperationId)
)
go

/*==============================================================*/
/* Table: SysMenuSysRoleSysOperation                            */
/*==============================================================*/
create table SysMenuSysRoleSysOperation (
   Id                   nvarchar(36)         not null,
   SysMenuId            nvarchar(36)         null,
   SysOperationId       nvarchar(36)         null,
   SysRoleId            nvarchar(36)         null,
   constraint PK_SYSMENUSYSROLESYSOPERATION primary key (Id)
)
go

/*==============================================================*/
/* Table: SysOperation                                          */
/*==============================================================*/
create table SysOperation (
   Id                   nvarchar(36)         not null,
   Name                 nvarchar(200)        null,
   "Function"           nvarchar(200)        null,
   Iconic               nvarchar(200)        null,
   Sort                 int                  null,
   Remark               nvarchar(4000)       null,
   State                nvarchar(200)        null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        null,
   Identification       nvarchar(200)        null,
   constraint PK_SYSOPERATION primary key nonclustered (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SysOperation') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'SysOperation' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '²Ù×÷', 
   'user', @CurrentUser, 'table', 'SysOperation'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Iconic')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'Iconic'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Equal',
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'Iconic'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ResearchDropDown',
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysOperation')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Research',
   'user', @CurrentUser, 'table', 'SysOperation', 'column', 'CreateTime'
go

/*==============================================================*/
/* Table: SysPerson                                             */
/*==============================================================*/
create table dbo.SysPerson (
   Id                   nvarchar(36)         not null,
   Name                 nvarchar(200)        not null,
   MyName               nvarchar(200)        null,
   Password             nvarchar(200)        not null,
   SurePassword         nvarchar(200)        null,
   Sex                  nvarchar(200)        null,
   SysDepartmentId      nvarchar(36)         null,
   Position             nvarchar(200)        null,
   MobilePhoneNumber    nvarchar(200)        null,
   PhoneNumber          nvarchar(200)        null,
   Province             nvarchar(200)        null,
   City                 nvarchar(200)        null,
   Village              nvarchar(200)        null,
   Address              nvarchar(200)        null,
   EmailAddress         nvarchar(200)        null,
   Remark               nvarchar(4000)       null,
   State                nvarchar(200)        null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        null,
   UpdateTime           datetime             null,
   LogonNum             int                  null,
   LogonTime            datetime             null,
   LogonIP              nvarchar(200)        null,
   LastLogonTime        datetime             null,
   LastLogonIP          nvarchar(200)        null,
   PageStyle            nvarchar(200)        null,
   UpdatePerson         nvarchar(200)        null,
   Version              timestamp            null,
   HDpic                varchar(200)         null,
   Identification       nvarchar(200)        null,
   constraint PK_SYSPERSON primary key nonclustered (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Name'

end


execute sp_addextendedproperty 'MS_Description', 
   'Research',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MyName')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'MyName'

end


execute sp_addextendedproperty 'MS_Description', 
   'Research',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'MyName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Sex')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Sex'

end


execute sp_addextendedproperty 'MS_Description', 
   'DropDown',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Sex'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Province')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Province'

end


execute sp_addextendedproperty 'MS_Description', 
   'DropDown',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Province'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'City')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'City'

end


execute sp_addextendedproperty 'MS_Description', 
   'ProvinceCascade',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'City'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Village')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Village'

end


execute sp_addextendedproperty 'MS_Description', 
   'CityCascade',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'Village'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'State'

end


execute sp_addextendedproperty 'MS_Description', 
   'RadioButtonResearch',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysPerson')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PageStyle')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysPerson', 'column', 'PageStyle'

end


execute sp_addextendedproperty 'MS_Description', 
   'Display',
   'user', 'dbo', 'table', 'SysPerson', 'column', 'PageStyle'
go

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create index Index_1 on dbo.SysPerson (
Name ASC
)
go

/*==============================================================*/
/* Table: SysRole                                               */
/*==============================================================*/
create table dbo.SysRole (
   Id                   nvarchar(36)         not null,
   Name                 nvarchar(200)        not null,
   Description          nvarchar(4000)       null,
   CreateTime           datetime             null,
   CreatePerson         nvarchar(200)        null,
   UpdateTime           datetime             null,
   UpdatePerson         nvarchar(200)        null,
   Identification       nvarchar(200)        null,
   constraint PK_SYSROLE primary key (Id)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dbo.SysRole')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SysRole', 'column', 'Name'

end


execute sp_addextendedproperty 'MS_Description', 
   'Research',
   'user', 'dbo', 'table', 'SysRole', 'column', 'Name'
go

/*==============================================================*/
/* Table: SysRoleSysPerson                                      */
/*==============================================================*/
create table dbo.SysRoleSysPerson (
   SysPersonId          nvarchar(36)         not null,
   SysRoleId            nvarchar(36)         not null,
   constraint PK_SYSROLESYSPERSON primary key (SysPersonId, SysRoleId)
         on "PRIMARY"
)
on "PRIMARY"
go

alter table dbo.SysDepartment
   add constraint FK_SYSDEPAR_REFERENCE_SYSDEPAR foreign key (ParentId)
      references dbo.SysDepartment (Id)
go

alter table dbo.SysField
   add constraint FK_SYSFIELD_REFERENCE_SYSFIELD foreign key (ParentId)
      references dbo.SysField (Id)
go

alter table dbo.SysMenu
   add constraint FK_SYSMENU_REFERENCE_SYSMENU foreign key (ParentId)
      references dbo.SysMenu (Id)
go

alter table SysMenuSysOperation
   add constraint FK_SYSMENUS_REFERENCE_SYSMENU foreign key (SysMenuId)
      references dbo.SysMenu (Id)
go

alter table SysMenuSysOperation
   add constraint FK_SYSMENUS_REFERENCE_SYSOPERA foreign key (SysOperationId)
      references SysOperation (Id)
go

alter table SysMenuSysRoleSysOperation
   add constraint FK_SYSMENUS_REFERENCE_SYSOPERA2 foreign key (SysOperationId)
      references SysOperation (Id)
go

alter table SysMenuSysRoleSysOperation
   add constraint FK_SYSMENUS_REFERENCE_SYSROLE foreign key (SysRoleId)
      references dbo.SysRole (Id)
go

alter table SysMenuSysRoleSysOperation
   add constraint FK_SYSMENUS_REFERENCE_SYSMENU2 foreign key (SysMenuId)
      references dbo.SysMenu (Id)
go

alter table dbo.SysPerson
   add constraint FK_SYSPERSO_REFERENCE_SYSDEPAR foreign key (SysDepartmentId)
      references dbo.SysDepartment (Id)
go

alter table dbo.SysRoleSysPerson
   add constraint FK_SYSROLES_REFERENCE_SYSPERSO foreign key (SysPersonId)
      references dbo.SysPerson (Id)
go

alter table dbo.SysRoleSysPerson
   add constraint FK_SYSROLES_REFERENCE_SYSROLE foreign key (SysRoleId)
      references dbo.SysRole (Id)
go

