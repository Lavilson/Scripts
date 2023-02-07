CREATE DATABASE [MyDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyDatabase', FILENAME = N'C:\Data\MyDatabase.mdf' , SIZE = 1048576KB , FILEGROWTH = 262144KB )
 LOG ON 
( NAME = N'MyDatabase_log', FILENAME = N'C:\Data\MyDatabase_log.ldf' , SIZE = 524288KB , FILEGROWTH = 131072KB )
GO
 
USE [master]
GO
ALTER DATABASE [MyDatabase] SET RECOVERY SIMPLE WITH NO_WAIT
GO
 
ALTER AUTHORIZATION ON DATABASE::[MyDatabase] TO [sa]
GO