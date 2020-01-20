CREATE TABLE [dbo].[CartItems] (
    [CartItemId]  INT            IDENTITY (1, 1) NOT NULL,
    [CartId]      NVARCHAR (MAX) NOT NULL,
    [Count]       INT            NOT NULL,
    [DateCreated] DATETIME2 (7)  NOT NULL,
    [ProductId]   INT            NOT NULL,
    CONSTRAINT [PK_CartItems] PRIMARY KEY CLUSTERED ([CartItemId] ASC),
    CONSTRAINT [FK_CartItems_Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_CartItems_ProductId]
    ON [dbo].[CartItems]([ProductId] ASC);

