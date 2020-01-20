CREATE TABLE [dbo].[Categories] (
    [CategoryId]  INT            IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (MAX) NULL,
    [ImageUrl]    NVARCHAR (MAX) NULL,
    [Name]        NVARCHAR (MAX) NOT NULL,
    [Value] INT NULL, 
    CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryId] ASC)
);

