CREATE TABLE [dbo].[Cart] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [SessionId] NVARCHAR (255) NULL,
    CONSTRAINT [PK_dbo.Cart] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_SessionId]
    ON [dbo].[Cart]([SessionId] ASC);

