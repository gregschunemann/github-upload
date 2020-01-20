CREATE TABLE [dbo].[Products] (
    [ProductId]        INT             IDENTITY (1, 1) NOT NULL,
    [CategoryId]       INT             NOT NULL,
    [Created]          DATETIME2 (7)   NOT NULL,
    [Description]      NVARCHAR (MAX)  NOT NULL,
    [Inventory]        INT             NOT NULL,
    [LeadTime]         INT             NOT NULL,
    [Price]            DECIMAL (18, 2) NOT NULL,
    [ProductArtUrl]    NVARCHAR (1024) NOT NULL,
    [ProductDetails]   NVARCHAR (MAX)  NOT NULL,
    [RecommendationId] INT             NOT NULL,
    [SalePrice]        DECIMAL (18, 2) NOT NULL,
    [SkuNumber]        NVARCHAR (MAX)  NOT NULL,
    [Title]            NVARCHAR (160)  NOT NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductId] ASC),
    CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([CategoryId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId]
    ON [dbo].[Products]([CategoryId] ASC);

