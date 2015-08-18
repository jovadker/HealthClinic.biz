CREATE TABLE [dbo].[CartItem] (
    [Id]       INT IDENTITY (1, 1) NOT NULL,
    [CartId]   INT NOT NULL,
    [BookId]   INT NOT NULL,
    [Quantity] INT NOT NULL,
    CONSTRAINT [PK_dbo.CartItem] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.CartItem_dbo.Book_BookId] FOREIGN KEY ([BookId]) REFERENCES [dbo].[Book] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.CartItem_dbo.Cart_CartId] FOREIGN KEY ([CartId]) REFERENCES [dbo].[Cart] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_CartId]
    ON [dbo].[CartItem]([CartId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_BookId]
    ON [dbo].[CartItem]([BookId] ASC);

