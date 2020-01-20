CREATE TABLE [dbo].[RainChecks] (
    [RaincheckId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (MAX) NULL,
    [ProductId]   INT            NOT NULL,
    [Quantity]    INT            NOT NULL,
    [SalePrice]   FLOAT (53)     NOT NULL,
    [StoreId]     INT            NOT NULL,
    CONSTRAINT [PK_RainChecks] PRIMARY KEY CLUSTERED ([RaincheckId] ASC),
    CONSTRAINT [FK_RainChecks_Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE,
    CONSTRAINT [FK_RainChecks_Stores_StoreId] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Stores] ([StoreId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_RainChecks_ProductId]
    ON [dbo].[RainChecks]([ProductId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RainChecks_StoreId]
    ON [dbo].[RainChecks]([StoreId] ASC);

