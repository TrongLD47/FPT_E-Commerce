USE [fptecommerce123]
GO
/****** Object:  Table [dbo].[addresses]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[addresses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address_line_1] [nvarchar](64) NOT NULL,
	[address_line_2] [nvarchar](64) NULL,
	[city] [nvarchar](45) NOT NULL,
	[first_name] [nvarchar](45) NOT NULL,
	[last_name] [nvarchar](45) NOT NULL,
	[phone_number] [nvarchar](15) NOT NULL,
	[postal_code] [nvarchar](10) NOT NULL,
	[state] [nvarchar](45) NOT NULL,
	[default_address] [bit] NULL,
	[city_id] [int] NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cart_items]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[product_id] [int] NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[category]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[citys]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[citys](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](5) NOT NULL,
	[name] [nvarchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[currencies]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[currencies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](4) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[symbol] [nvarchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[discount1]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discount1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[detail_discount] [nvarchar](255) NULL,
	[end_date_discount] [date] NULL,
	[name] [nvarchar](255) NULL,
	[percentz] [int] NULL,
	[start_date_discount] [date] NULL,
	[type_of_discount] [nvarchar](255) NULL,
	[value_of_discount] [float] NULL,
	[value_of_oder] [float] NULL,
	[id_shop] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[history_user_order]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history_user_order](
	[id_user] [int] NOT NULL,
	[id_order] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[image]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[path] [nvarchar](255) NULL,
	[my_file_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[myfile]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[myfile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[create_date_order] [date] NULL,
	[name] [nvarchar](255) NULL,
	[total_discount_price] [float] NULL,
	[total_price] [float] NULL,
	[id_order] [int] NULL,
	[id_product] [int] NULL,
	[quantity] [int] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order_track]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[order_track](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[notes] [nvarchar](256) NULL,
	[status] [varchar](45) NOT NULL,
	[updated_time] [datetime2](7) NULL,
	[order_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[order1]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[order1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[create_date_order] [date] NULL,
	[order_price] [float] NULL,
	[status] [int] NULL,
	[id_shop] [int] NULL,
	[id_user] [int] NULL,
	[address_line_2] [nvarchar](64) NULL,
	[deliver_date] [datetime2](7) NULL,
	[order_time] [datetime2](7) NULL,
	[payment_method] [varchar](255) NULL,
	[state] [nvarchar](45) NULL,
	[statuss] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[brand] [nvarchar](255) NULL,
	[code] [nvarchar](255) NULL,
	[create_time] [date] NULL,
	[description] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[path_image] [nvarchar](255) NULL,
	[path_image1] [nvarchar](255) NULL,
	[path_image2] [nvarchar](255) NULL,
	[path_image3] [nvarchar](255) NULL,
	[promotion_price] [float] NULL,
	[quantity] [int] NULL,
	[status] [int] NULL,
	[unit_price] [float] NULL,
	[id_discount] [int] NULL,
	[id_product_details] [int] NULL,
	[id_shop] [int] NULL,
	[id_sub_category] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product_details]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[color] [nvarchar](255) NULL,
	[gender] [int] NULL,
	[material] [nvarchar](255) NULL,
	[size] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[role]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[settings]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[settings](
	[key] [nvarchar](128) NOT NULL,
	[category] [varchar](45) NOT NULL,
	[value] [nvarchar](1024) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shipping_rates]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shipping_rates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cod_supported] [bit] NULL,
	[days] [int] NOT NULL,
	[rate] [float] NOT NULL,
	[state] [nvarchar](45) NOT NULL,
	[city_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[shop]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[link_image] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[status] [int] NULL,
	[shop_url] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[subcategory]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subcategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_sub] [nvarchar](255) NULL,
	[name_sub] [nvarchar](255) NULL,
	[id_category] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[transaction1]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user_role]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_role](
	[id_user] [int] NOT NULL,
	[id_role] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user1]    Script Date: 08/16/22 12:22:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](255) NULL,
	[birth_day] [date] NULL,
	[create_time] [date] NULL,
	[email] [nvarchar](30) NULL,
	[gender] [int] NULL,
	[password] [nvarchar](80) NULL,
	[path] [nvarchar](255) NULL,
	[phone_number] [nvarchar](255) NULL,
	[update_time] [date] NULL,
	[username] [nvarchar](30) NULL,
	[address_line1] [nvarchar](255) NULL,
	[address_line2] [nvarchar](255) NULL,
	[first_name] [nvarchar](255) NULL,
	[last_name] [nvarchar](255) NULL,
	[postal_code] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[city_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[addresses]  WITH CHECK ADD  CONSTRAINT [FK76fyv7y5cr8b0xy4wyfcp51tw] FOREIGN KEY([city_id])
REFERENCES [dbo].[citys] ([id])
GO
ALTER TABLE [dbo].[addresses] CHECK CONSTRAINT [FK76fyv7y5cr8b0xy4wyfcp51tw]
GO
ALTER TABLE [dbo].[addresses]  WITH CHECK ADD  CONSTRAINT [FKfhi1y87p504nnve5fn3370k8g] FOREIGN KEY([user_id])
REFERENCES [dbo].[user1] ([id])
GO
ALTER TABLE [dbo].[addresses] CHECK CONSTRAINT [FKfhi1y87p504nnve5fn3370k8g]
GO
ALTER TABLE [dbo].[cart_items]  WITH CHECK ADD  CONSTRAINT [FKj4novd3e3jckxfm14205h6asf] FOREIGN KEY([user_id])
REFERENCES [dbo].[user1] ([id])
GO
ALTER TABLE [dbo].[cart_items] CHECK CONSTRAINT [FKj4novd3e3jckxfm14205h6asf]
GO
ALTER TABLE [dbo].[cart_items]  WITH CHECK ADD  CONSTRAINT [FKl7je3auqyq1raj52qmwrgih8x] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[cart_items] CHECK CONSTRAINT [FKl7je3auqyq1raj52qmwrgih8x]
GO
ALTER TABLE [dbo].[discount1]  WITH CHECK ADD  CONSTRAINT [FKq9e6dulng16v6ajlmb6rfcqkq] FOREIGN KEY([id_shop])
REFERENCES [dbo].[shop] ([id])
GO
ALTER TABLE [dbo].[discount1] CHECK CONSTRAINT [FKq9e6dulng16v6ajlmb6rfcqkq]
GO
ALTER TABLE [dbo].[history_user_order]  WITH CHECK ADD  CONSTRAINT [FKbfm5py8fg0k57y9naty18yo8p] FOREIGN KEY([id_order])
REFERENCES [dbo].[order1] ([id])
GO
ALTER TABLE [dbo].[history_user_order] CHECK CONSTRAINT [FKbfm5py8fg0k57y9naty18yo8p]
GO
ALTER TABLE [dbo].[history_user_order]  WITH CHECK ADD  CONSTRAINT [FKbpxrejpcjf89j52o3qna45680] FOREIGN KEY([id_user])
REFERENCES [dbo].[user1] ([id])
GO
ALTER TABLE [dbo].[history_user_order] CHECK CONSTRAINT [FKbpxrejpcjf89j52o3qna45680]
GO
ALTER TABLE [dbo].[image]  WITH CHECK ADD  CONSTRAINT [FKfj2gcwwevy00i8cemntrsor96] FOREIGN KEY([my_file_id])
REFERENCES [dbo].[myfile] ([id])
GO
ALTER TABLE [dbo].[image] CHECK CONSTRAINT [FKfj2gcwwevy00i8cemntrsor96]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FKicrtfcntxfkyrnoaqh1croidl] FOREIGN KEY([id_product])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FKicrtfcntxfkyrnoaqh1croidl]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FKo4ny9epdx6uking9tynbbvdth] FOREIGN KEY([id_order])
REFERENCES [dbo].[order1] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FKo4ny9epdx6uking9tynbbvdth]
GO
ALTER TABLE [dbo].[order_track]  WITH CHECK ADD  CONSTRAINT [FKsep45kghfqoxib74js4a8lfi7] FOREIGN KEY([order_id])
REFERENCES [dbo].[order1] ([id])
GO
ALTER TABLE [dbo].[order_track] CHECK CONSTRAINT [FKsep45kghfqoxib74js4a8lfi7]
GO
ALTER TABLE [dbo].[order1]  WITH CHECK ADD  CONSTRAINT [FK8mt3hp4r1ulushvqsdypyw5fg] FOREIGN KEY([id_shop])
REFERENCES [dbo].[shop] ([id])
GO
ALTER TABLE [dbo].[order1] CHECK CONSTRAINT [FK8mt3hp4r1ulushvqsdypyw5fg]
GO
ALTER TABLE [dbo].[order1]  WITH CHECK ADD  CONSTRAINT [FKiy4lq6vo24ftbochvp2gtr3gr] FOREIGN KEY([id_user])
REFERENCES [dbo].[user1] ([id])
GO
ALTER TABLE [dbo].[order1] CHECK CONSTRAINT [FKiy4lq6vo24ftbochvp2gtr3gr]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FKdgm54cj2wvclhrps5o4chplyj] FOREIGN KEY([id_sub_category])
REFERENCES [dbo].[subcategory] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKdgm54cj2wvclhrps5o4chplyj]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FKjr7tp2fspj1ru4akb3lw8awif] FOREIGN KEY([id_product_details])
REFERENCES [dbo].[product_details] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKjr7tp2fspj1ru4akb3lw8awif]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FKplwyhnuv1uhtrya09je6nrp7x] FOREIGN KEY([id_discount])
REFERENCES [dbo].[discount1] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKplwyhnuv1uhtrya09je6nrp7x]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FKyl05c7yfqa2vygwwg7na1hcv] FOREIGN KEY([id_shop])
REFERENCES [dbo].[shop] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKyl05c7yfqa2vygwwg7na1hcv]
GO
ALTER TABLE [dbo].[shipping_rates]  WITH CHECK ADD  CONSTRAINT [FKl6dejxmw1j6x3w7hpsn3mqfp8] FOREIGN KEY([city_id])
REFERENCES [dbo].[citys] ([id])
GO
ALTER TABLE [dbo].[shipping_rates] CHECK CONSTRAINT [FKl6dejxmw1j6x3w7hpsn3mqfp8]
GO
ALTER TABLE [dbo].[subcategory]  WITH CHECK ADD  CONSTRAINT [FKk8ffo5tjobbow8vywcpyhrgyo] FOREIGN KEY([id_category])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[subcategory] CHECK CONSTRAINT [FKk8ffo5tjobbow8vywcpyhrgyo]
GO
ALTER TABLE [dbo].[user_role]  WITH CHECK ADD  CONSTRAINT [FK2aam9nt2tv8vcfymi3jo9c314] FOREIGN KEY([id_role])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[user_role] CHECK CONSTRAINT [FK2aam9nt2tv8vcfymi3jo9c314]
GO
ALTER TABLE [dbo].[user_role]  WITH CHECK ADD  CONSTRAINT [FK31sp2hnr11bbw8urn382l6a3o] FOREIGN KEY([id_user])
REFERENCES [dbo].[user1] ([id])
GO
ALTER TABLE [dbo].[user_role] CHECK CONSTRAINT [FK31sp2hnr11bbw8urn382l6a3o]
GO
ALTER TABLE [dbo].[user1]  WITH CHECK ADD  CONSTRAINT [FKnygvdwgbunioyj03ljih6iwt3] FOREIGN KEY([city_id])
REFERENCES [dbo].[citys] ([id])
GO
ALTER TABLE [dbo].[user1] CHECK CONSTRAINT [FKnygvdwgbunioyj03ljih6iwt3]
GO
