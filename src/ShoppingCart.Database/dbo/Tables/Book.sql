CREATE TABLE [dbo].[Book] (
    [Id]          INT             IDENTITY (1, 1) NOT NULL,
    [AuthorId]    INT             NOT NULL,
    [CategoryId]  INT             NOT NULL,
    [Title]       NVARCHAR (MAX)  NULL,
    [Isbn]        NVARCHAR (MAX)  NULL,
    [Synopsis]    NVARCHAR (MAX)  NULL,
    [Description] NVARCHAR (MAX)  NULL,
    [ImageUrl]    NVARCHAR (MAX)  NULL,
    [ListPrice]   DECIMAL (18, 2) NOT NULL,
    [SalePrice]   DECIMAL (18, 2) NOT NULL,
    [Featured]    BIT             NOT NULL,
    CONSTRAINT [PK_dbo.Book] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.Book_dbo.Author_AuthorId] FOREIGN KEY ([AuthorId]) REFERENCES [dbo].[Author] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.Book_dbo.Category_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_AuthorId]
    ON [dbo].[Book]([AuthorId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_CategoryId]
    ON [dbo].[Book]([CategoryId] ASC);

