INSERT INTO Roles (name, promo)
VALUES 
  (N'Khách vãng lai', 0),
  (N'Admin', 0),
  (N'Nhân viên', 5),
  (N'Khách hàng thường', 0),
  (N'Khách hàng Bạc', 7),
  (N'Khách hàng Vàng', 10),
  (N'Khách hàng Kim cương', 15);
GO

INSERT INTO Users (name, phone, address, role, total_buy)
VALUES (N'Nguyễn Tùng Lâm', '0987654321', N'TP.HCM', 2, 0.00);
GO
INSERT INTO Accounts (user_id, email, password)
VALUES (1, 'lamnt108@gmail.com', '$2a$10$lY.dKs8nCtsXm0k2.xpaM.8vE0vnW5bD5Drov4mhx1JeA20xGs4vy');

GO

INSERT INTO Products (category_id, description, name, brand, price, promo, rate, stars_rate, sold, banner, unit)
VALUES
(1, N'Áo thun cotton 100%, thấm hút mồ hôi tốt, form unisex.', N'Áo thun trơn cổ tròn', N'Coolmate', 150000, 10, 100, 4, 230, 1, N'Cái'),
(1, N'Áo thun form rộng, in hình thời trang, phù hợp đi chơi.', N'Áo thun in hình Streetwear', N'Routine', 220000, 15, 80, 5, 320, 0, N'Cái'),
(2, N'Quần jean nam dáng slim-fit, co giãn nhẹ, màu xanh đậm.', N'Quần jean slim-fit', N'Levis', 490000, 20, 50, 4, 110, 0, N'Cái'),
(2, N'Quần jean nữ ống rộng, phong cách Hàn Quốc.', N'Quần jean ống rộng', N'Routine', 520000, 10, 70, 5, 180, 0, N'Cái'),
(3, N'Áo khoác gió nhẹ, chống thấm nước, phù hợp đi chơi và thể thao.', N'Áo khoác gió nam', N'Coolmate', 450000, 5, 60, 4, 95, 1, N'Cái'),
(3, N'Áo khoác hoodie nỉ dày, ấm áp cho mùa đông.', N'Hoodie nỉ unisex', N'Yame', 390000, 0, 85, 5, 210, 0, N'Cái')
GO

INSERT INTO ColorSizes (color, code, price, product_id, quantity, size)
VALUES
(N'Trắng', N'TRN', 150000, 1, 100, N'M'),
(N'Đen', N'DEN', 150000, 1, 80, N'L'),
(N'Xanh navy', N'XNV', 150000, 1, 60, N'XL'),

(N'Trắng', N'TRN', 220000, 2, 90, N'M'),
(N'Xám', N'XAM', 220000, 2, 70, N'L'),

(N'Xanh đậm', N'XDM', 490000, 3, 50, N'30'),
(N'Xanh nhạt', N'XNH', 490000, 3, 60, N'32'),

-- Quần jean ống rộng (id = 4)
(N'Xanh nhạt', N'XNH', 520000, 4, 80, N'M'),
(N'Đen', N'DEN', 520000, 4, 70, N'L'),

-- Áo khoác gió nam (id = 5)
(N'Đen', N'DEN', 450000, 5, 40, N'L'),
(N'Xanh navy', N'XNV', 450000, 5, 50, N'M')

INSERT INTO Categories (description, name)
VALUES
(N'Áo thun nam, nữ chất lượng cao, thoáng mát, nhiều kiểu dáng.', N'Áo thun'),
(N'Các loại quần jean nam nữ thời trang, nhiều kiểu dáng, co giãn.', N'Quần jean'),
(N'Áo khoác đa dạng phong cách, từ thể thao đến thời trang.', N'Áo khoác'),
(N'Các mẫu váy thời trang, nữ tính, phù hợp nhiều dịp.', N'Váy'),
(N'Giày thể thao, sneaker, giày sandal năng động, trẻ trung.', N'Giày');

INSERT INTO Posts ([type], [content], [author], [title])
VALUES
(N'Câu chuyện', 
 N'Kể từ khi thành lập vào năm 2020, chúng tôi đã và đang nỗ lực không ngừng để mang đến những giải pháp sáng tạo và dịch vụ xuất sắc cho khách hàng trên toàn quốc. Chúng tôi tin tưởng vào chất lượng, sự chính trực và cam kết.',
 N'Lâm Nguyễn',
 N'Câu Chuyện Của Chúng Tôi'),
(N'Về chúng tôi', 
 N'Khám phá và định hình phong cách cá nhân của bạn cùng những item tuyệt vời của chúng tôi nào!',
 N'Lâm Nguyễn',
 N'Đây là GOSY'),
(N'Giá trị cốt lõi', 
 N'Chúng tôi luôn nỗ lực để đi đầu trong công nghệ, không ngừng cải tiến và phát triển.',
 N'Lâm Nguyễn',
 N'Đổi Mới'),
(N'Giá trị cốt lõi', 
 N'Khách hàng là ưu tiên hàng đầu. Chúng tôi lắng nghe và đáp ứng nhu cầu của họ.',
 N'Lâm Nguyễn',
 N'Khách Hàng Là Trọng Tâm'),
 (N'Giá trị cốt lõi', 
 N'Chúng tôi điều hành doanh nghiệp với sự trung thực và minh bạch.',
 N'Lâm Nguyễn',
 N'Chính Trực'),

-- Bài viết thời trang
(N'Tin tức', 
'https://www.elle.vn/the-gioi-thoi-trang/nu-lanh-dao-thoi-trang-8-3/',
 N'Lâm Nguyễn',
 N'8 “nữ lãnh đạo” trong thời trang: Phụ nữ đã thay đổi thế giới như thế nào?'),

(N'Tin tức', 
'https://bazaarvietnam.vn/top-xu-huong-thoi-trang-xuan-he-2025/',
 N'Lâm Nguyễn',
 N'Top 10 xu hướng Xuân Hè 2025 đáng chú ý nhất từ tứ đại tuần lễ thời trang')

INSERT INTO Posts ([type], [content], [author], [title])
VALUES
(N'Câu hỏi', 
 N'Quý khách có thể đổi trả sản phẩm trong vòng 30 ngày kể từ ngày mua hàng với điều kiện sản phẩm còn nguyên vẹn, đầy đủ phụ kiện và hộp. Đối với sản phẩm lỗi do nhà sản xuất, chúng tôi sẽ đổi mới 100% trong 15 ngày đầu tiên.',
 N'Lâm Nguyễn',
 N'Chính sách đổi trả của GOSY như thế nào?'),
 (N'Câu hỏi', 
 N'Thời gian giao hàng thông thường từ 1-3 ngày đối với khu vực nội thành TP.HCM và 3-5 ngày đối với các tỉnh thành khác. Đơn hàng trên 10 triệu được miễn phí giao hàng toàn quốc.',
 N'Lâm Nguyễn',
 N'Thời gian giao hàng mất bao lâu?'),
 (N'Câu hỏi', 
 N'Tất cả sản phẩm tại GOSY được bảo hành chính hãng 2 tháng. Ngoài ra, khách hàng được hưởng thêm 1 tháng bảo hành từ cửa hàng. Chúng tôi có trung tâm bảo hành riêng để phục vụ khách hàng nhanh chóng.',
 N'Lâm Nguyễn',
 N'Chính sách bảo hành như thế nào?')

 select * from Products;