CREATE TABLE [dbo].[Author] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [FirstName] NVARCHAR (MAX) NULL,
    [LastName]  NVARCHAR (MAX) NULL,
    [Biography] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.Author] PRIMARY KEY CLUSTERED ([Id] ASC)
);

