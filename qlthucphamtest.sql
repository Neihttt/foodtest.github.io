-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Aug 14, 2022 at 10:57 AM
-- Server version: 10.6.5-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlthucphamtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `loaihang`
--

DROP TABLE IF EXISTS `loaihang`;
CREATE TABLE IF NOT EXISTS `loaihang` (
  `malh` char(10) NOT NULL,
  `tenlh` varchar(200) DEFAULT NULL,
  `manhom` char(10) DEFAULT NULL,
  PRIMARY KEY (`malh`),
  KEY `manhom` (`manhom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaihang`
--

INSERT INTO `loaihang` (`malh`, `tenlh`, `manhom`) VALUES
('HSK', 'Hải sản khô', 'A'),
('HST', 'Hải sản tươi', 'A'),
('RCS', 'Rau củ sấy', 'B'),
('RCT', 'Rau củ tươi', 'B'),
('TCS', 'Trái cây sấy', 'C'),
('TCT', 'Trái cây tươi', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `mathang`
--

DROP TABLE IF EXISTS `mathang`;
CREATE TABLE IF NOT EXISTS `mathang` (
  `mamh` char(10) NOT NULL,
  `malh` char(10) DEFAULT NULL,
  `tenmh` varchar(200) DEFAULT NULL,
  `dvt` varchar(10) DEFAULT NULL,
  `gia` int(20) DEFAULT NULL,
  `hinh` text DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `giamgia` float NOT NULL,
  PRIMARY KEY (`mamh`),
  KEY `malh` (`malh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mathang`
--

INSERT INTO `mathang` (`mamh`, `malh`, `tenmh`, `dvt`, `gia`, `hinh`, `mota`, `giamgia`) VALUES
('BC', 'RCT', 'Bông cải', 'kg', 25000, 'caixanh.jpg', 'Bông cải xanh (hay còn gọi là súp lơ xanh) là một loài rau thuộc họ cải mang tên khoa học là Brassica Oleracea. Nó có họ hàng với cải bắp, cải xoăn, bông cải trắng và cải Brussels. Những loại rau này nổi tiếng là có lợi cho sức khỏe và đôi khi được gọi là “siêu rau.”\r\nBông cải xanh có nhiều chất dinh dưỡng, bao gồm chất xơ, vitamin C, vitamin K, sắt và kali. Bông cải xanh cũng chứa nhiều protein hơn hầu hết các loại rau khác.\r\n\r\nBông cải xanh có thể ăn được cả khi còn sống lẫn nấu chín, nhưng những nghiên cứu gần đây cho thấy hấp sơ bông cải xanh sẽ đem lại nhiều lợi ích nhất cho sức khoẻ.', 10),
('BCT', 'RCT', 'Bap Cai Tim', 'kg', 38000, 'bapcaitim.jpg', 'Là một loại thực phẩm vô cùng quen thuộc, có màu sắc vô cùng bắt mắt, rất dễ mua và chế biến thành nhiều món ăn đa dạng khác nhau trong bữa cơm hằng ngày.Bắp cải tím có nhiều công dụng tốt cho sức khoẻ như: chất phytochemical, chất dinh dưỡng, chất chống oxy hóa, vitamin và khoáng chất có thể kế đến như là: thiamin, folate, canxi, magiê, mangan, riboflavin, sắt, kali, vitamin A, vitamin E, vitamin C, vitamin K và vitamin B và chất xơ.\r\nNgoài ra, bắp cải tím còn tăng cường hệ miễn dịch, ngăn ngừa ung thư, giảm cân, chống viêm khớp, điều trị viêm loét dạ dày, giảm nguy cơ loãng xương,...', 5),
('BT', 'HST', 'Bạch tuộc', 'kg', 180000, 'bachtuoc.jpg', 'Loài này cũng phổ biến ở Tây Đại Tây Dương. Bạch tuộc thông thường dài có lớp áo dài đến 25 cm với cánh tay dài 1m. Bạch tuộc thông thường bị đánh bắt bằng lưới cào đáy trên một quy mô lớn ngoài khơi bờ biển phía tây bắc của châu Phi.', 1),
('CC', 'HST', 'Ca Chem', 'kg', 150000, 'cachem.png', 'Cá chẽm hay cá vược(danh pháp hai phần: Lates calcarifer) là một loài cá sống cả trong nước mặn lẫn nước ngọt, thuộc về phân họ Cá chẽm (Latinae) của họ Centropomidae.\r\nCá chẽm còn gọi là cá vược. Chúng thường sống trong các hang đá hoặc vùng đáy có cỏ biển. Chúng cũng thích nghi với đáy rạn san hô. Loài cá này cũng có phân bố ở vùng nước lợ.', 1),
('CCB', 'RCT', 'Ca chua bi', 'kg', 26000, 'cachuabi.png', 'Loại cà chua trái nhỏ của có hình dạng quả tròn hoặc dài, màu đỏ đều rất đẹp, cà chua bi có vị chua nhưng ngọt hơn cà chua thông thường. Cà chua bi có vị ngọt, giòn thích hợp với món sa lát.Ngoài ra, cà chua bi còn có công dụng có giúp nam giới phòng ngừa khỏi nguy cơ bị ung thư tuyến tiền liệt.', 0),
('CCD', 'TCT', 'Chom Chom Duong', 'kg', 30000, 'chomduong.png', 'Chôm chôm là loài cây ăn trái vùng nhiệt đới Đông Nam Á, thuộc họ Bồ hòn. Tên gọi chôm chôm (hay lôm chôm) tượng hình cho trạng thái lông của trái loài cây này. Chôm chôm trồng nhiều ở các nước có khí hậu nhiệt đới như: Malaysia, Indonesia, Thái Lan, Việt Nam, v.v… Ở Việt Nam chôm chôm được trồng chủ yếu ở các tỉnh thuộc lưu vực sông Đồng Nai, Nam Trung Bộ, và ĐBSCL.\r\n\r\nThịt chôm chôm chứa rất nhiều chất xơ giúp cơ thể dễ dàng loại bỏ chất thải, tiêu diệt ký sinh trùng, loại bỏ độc tố trong thận, bổ máu, giảm đau đầu, chữa lỵ, làm đẹp, giảm cân… Giá trị dinh dưỡng trong 100g thịt trái tươi gồm có: 63 calo năng lượng; 82.9% nước; 0.9g Protein; 0.1g chất xơ; 3mg Ca; 6mg P; 1.8mg Fe; 4 I.A Vitamin A; 0.04mg Vitamin B1; 0.05mg Vitamin B2; 0.6mg Vitamin PP và 31mg Vitamin C… Chôm chôm có nhiều loại, hiện nay ở Việt Nam có các loại chôm chôm phổ biến như: chôm chôm đường, chôm chôm Java (chôm tróc), chôm chôm nhãn, chôm chôm Rongrien (chôm Thái), chôm chôm dính.', 0),
('CCT', 'TCT', 'Chom Chom Thai', 'kg', 35000, 'chomthai.png', 'Chôm chôm là loài cây trồng phổ biến ở vùng nhiệt đới Đông Nam Á trong đó có Việt nam, chôm chôm thuộc họ Bồ hòn (Sapindaceae). Tên gọi chôm chôm (hay lôm chôm) tượng hình cho trạng thái lông của quả loài cây này. Lông cũng là đặc tính cơ bản trong việc đặt tên của người Trung Quốc: hồng mao đan, hay của người Mã Lai: rambutan (trái có lông). Các nước phương Tây mượn giọng đọc của Mã Lai để gọi cây/trái chôm chôm: Anh, Đức gọi là rambutan, Pháp gọi là ramboutan...\r\n\r\n- Tại Việt nam Chôm chôm có 3 dòng phổ biến là chôm nhãn, chôm thái và chôm thường (loại này thường không tróc vỏ) được trồng nhiều tại đa số các tỉnh Đồng bằng sông cửu long và Long Khánh ( Đồng Nai ) . Chôm chôm Thái là râu dài vỏ màu đỏ tươi, thịt dày ăn tróc với vị ngọt đậm sắc. Giá ưu đãi cực tốt tiết kiệm lên đến 10-25% so với giá bán lẻ dành cho khách mua nguyên thùng 15-20kg đặc biệt là khách sỉ vui lòng liên hệ Hotline 0909.13.14.18 (Zalo 24/24)\r\n\r\n- Cây chôm chôm có thể cao 8 tới 10 m, lá đơn, phiến lá hình trái xoan, đầu và đuôi lá nhọn, mọc cách. Lá nhỏ màu xanh non, khi già xanh đậm. Ngọn búp có lớp bao màu hơi đỏ. Hoa từng chùm ở đầu cành, dài từ 3 đến 5mm, tỏa mùi thơm dịu. Thời gian trái chín khoảng 15-18 tuần sau khi kết quả. Mỗi chùm đậu quả độ trên dưới 20 trái. Mỗi năm chôm chôm có 1 mùa trái, nếu chăm sóc có kĩ thuật có thể cho 2 mùa trái.', 0),
('CDL', 'RCT', 'Ca chua ka don da lat', 'kg', 35000, 'cachua.jpg', 'Cà chua Đà Lạt là loại rau quả làm thực phẩm. Qủa ban đầu có màu xanh, chín ngả màu từ vàng đến đỏ. Cà chua có vị hơi chua và là thực phẩm bổ dưỡng. Cà chua thuộc họ cây Bạch anh, phát triển từ 1 đến 3 mét chiều cao, có cây thân mềm bò trên đất hay dây leo, cà chua được trồng nhiều hàng năm ở các vùng khí hậu ôn đới.\r\n\r\n* Công dụng của cà chua đà lạt:\r\n\r\n- Cải thiện thị lực: Cà chua cung cấp vitamin A và C giúp ngăn ngừa quáng gà và tăng thị lực cho đôi mắt.\r\n\r\n- Phòng chống ung thư: Ăn nhiều cà chua chống lại ung thư tuyến tiền liệt, giúp giảm nguy cơ 1 số bệnh ung thư khác như: dạ dày, cổ tử cung, vòng họng, thực quản và ung thư buồng trứng nhờ các chất chống oxy hóa, đặt biệt là nhờ vào hàm lượng lycopene rất cao có trong cà chua.\r\n\r\n- Làm sáng da: Cà chua chứa lycopene 1 chất chống oxy hóa mạnh bảo vệ da chống ánh nắng mặt trời và làm cho da ít nhạy cảm với tia cực tím là nguyên nhân tạo ra nết nhăn ở da.\r\n\r\n- Thúc đẩy giấc ngủ ngon: Với nguồn vitamin C dồi dào và lycopene giúp cơ thể bạn ngủ ngon hơn.\r\n\r\n- Giữ xương chắc khỏe: Cà chua chứa nhiều vitamin K và canxi giúp cho xương khỏe mạnh và chống loãng xương. \r\n\r\n- Chữa các bệnh mãn tính: Nhờ các chất chống viêm như: carotenoid và bioflavonoid cà chua có thể làm giảm cơn đau mãn tính.\r\n\r\n- Tốt cho mái tóc: Nhờ vitamin và chất sắt giúp cho mái tóc hư tổn trở nên mền mượt .\r\n\r\n- Giúp giảm cân: Cà chua ít chất béo và không chứa cholesterol và chứa nhiều chất xơ và nước, do đó sẽ giúp bạn cảm thấy no.', 0),
('CG', 'HST', 'Cua gạch', 'kg', 500000, 'cuagach.png', 'Cua gạch là loại cua có yếm to, phần yếm cua gạch chiếm gần hết diện tích mình cua. Hình dạng của yếm có xu hướng bè ra, hơi giống hình thang. Yếm cua gạch trông đậm màu.', 0),
('CR', 'RCT', 'Cà rốt', 'kg', 15000, 'carot.jpg', 'Cà rốt (bắt nguồn từ tiếng Pháp carotte /kaʁɔt/,[1] danh pháp khoa học: Daucus carota subsp. sativus) là một loại cây có củ, thường có màu đỏ, vàng, trắng hay tía. Phần ăn được của cà rốt là củ, thực chất là rễ cái của nó, chứa nhiều tiền tố của vitamin A tốt cho mắt.\r\n\r\nTrong tự nhiên, nó là loại cây sống hai năm, phát triển một nơ chứa lá trong mùa xuân và mùa hè, trong khi đó vẫn tích lũy một lượng lớn đường trong rễ cái to mập, tích trữ năng lượng để ra hoa trong năm thứ hai. Thân cây mang hoa có thể cao tới 1 m (3 ft), với hoa tán chứa các hoa nhỏ màu trắng, sinh ra quả, được các nhà thực vật học gọi là quả nẻ[2] Cà rốt chứa lượng natri vừa đủ để duy trì huyết áp ở mức hợp lý trong cơ thể. Đối với những người tiêu thụ cà rốt thường xuyên, huyết áp của họ sẽ luôn ở trong tình trạng ổn định và trong tầm kiểm soát.', 0),
('CT', 'HST', 'Cua thịt', 'kg', 300000, 'cuabien.png', 'Cua thịt (hay còn gọi là cua Y), là loại cua giống đực với trọng lượng cơ thể hơn 70% là thịt. Vì là cua đực, nên những con cua thịt không có gạch đỏ. Nhưng thay vào đó, chúng sở hữu chất lượng thịt ngon nhất trong tất cả loại cua.', 0),
('DT', 'TCT', 'Dau Tay', 'kg', 120000, 'dautay.jpg', 'Dâu tây vườn hay gọi đơn giản là dâu tây (danh pháp khoa học: Fragaria × ananassa)là một chi thực vật hạt kín và loài thực vật có hoa thuộc họ Hoa hồng (Rosaceae). Dâu tây xuất xứ từ châu Mỹ và được các nhà làm vườn châu Âu cho lai tạo vào thế kỷ 18 để tạo nên giống dâu tây được trồng rộng rãi hiện nay. Loài này được (Weston) Duchesne miêu tả khoa học đầu tiên năm 1788. Loại quả này được nhiều người đánh giá cao nhờ hương thơm đặc trưng, màu đỏ tươi, mọng nước và vị ngọt. Nó được tiêu thụ với số lượng lớn, hoặc được tiêu thụ dưới dạng dâu tươi hoặc được chế biến thành mứt, nước trái cây, bánh nướng, kem, sữa lắc và sôcôla. Nguyên liệu và hương liệu dâu nhân tạo cũng được sử dụng rộng rãi trong các sản phẩm như kẹo, xà phòng, son bóng, nước hoa, và nhiều loại khác.', 0),
('KML', 'HSK', 'Khô mực loại lớn', 'kg', 800000, 'khomuclon.png', 'Khô mực chính là các con mực được ngư dân đánh bắt từ biển. Sau đó mực tươi được sơ chế và đem đi phơi nắng tự nhiên hay sấy khô để tạo nên món mực khô đặc trưng. Mực khô là món hải sản khô nổi tiếng từ các vùng biển Việt Nam. Trên thị trường hiện nay có rất nhiều loại mực khô. Cùng với đó là các đơn vị cung cấp khô mực với giá thành khác nhau.', 0),
('KMN', 'HSK', 'Khô mực nhỏ', 'kg', 400000, 'khomucnho.png', 'Khô mực chính là các con mực được ngư dân đánh bắt từ biển. Sau đó mực tươi được sơ chế và đem đi phơi nắng tự nhiên hay sấy khô để tạo nên món mực khô đặc trưng. Mực khô là món hải sản khô nổi tiếng từ các vùng biển Việt Nam. Trên thị trường hiện nay có rất nhiều loại mực khô. Cùng với đó là các đơn vị cung cấp khô mực với giá thành khác nhau.', 0),
('KMT', 'HSK', 'Khô mực loại trung', 'kg', 600000, 'khomuctrung.png', 'Khô mực chính là các con mực được ngư dân đánh bắt từ biển. Sau đó mực tươi được sơ chế và đem đi phơi nắng tự nhiên hay sấy khô để tạo nên món mực khô đặc trưng. Mực khô là món hải sản khô nổi tiếng từ các vùng biển Việt Nam. Trên thị trường hiện nay có rất nhiều loại mực khô. Cùng với đó là các đơn vị cung cấp khô mực với giá thành khác nhau.', 0),
('LRD', 'TCT', 'Thanh long ruot do', 'kg', 20000, 'thanhlongRD.png', 'Thanh long là loại trái cây thuộc họ xương rồng, có nguồn gốc từ Trung và Nam Mỹ, được nhập vào các nước Đông Nam Á để làm thực phẩm, làm thuốc và làm cảnh. Thanh long ruột đỏ hay còn gọi là thanh long ruột hồng , quả thường được thu hoạch vào mùa hè hoặc mùa thu. Ngày nay, dưới sự phát triển của khoa học, kỹ thuật người ta có thể trồng thanh long ruột đỏ cho ra quả quanh năm', 0),
('LRT', 'TCT', 'Thanh long ruot trang', 'kg', 22000, 'thanhlongRT.png', 'Thanh long ruột trắng là loại cây được trồng ở các tình Bình Thuận, An Giang, Tây Ninh của Việt Nam. Từ thế kỷ XX, khi được người Pháp đưa vào Việt Nam, thanh long ruột trắng được trồng thí điểm ở ba miền nhưng theo đánh giá thực tế thì những khu vực có nhiệt độ cao, nắng quanh năm sẽ cho năng suất cao nhất.', 0),
('MK', 'TCS', 'Mít sấy', 'kg', 100000, 'mitsay.png', 'Mít sấy Đà Lạt là loại hoa quả sấy được rất nhiều người yêu thích. Nó có đầy đủ các vitamin và khoáng chất tự nhiên. Dưới đây là một số lợi ích sức khỏe của trái mít.', 0),
('MN', 'HST', 'Mực nang', 'kg', 210000, 'mucnang.png', 'Mực Nang – Mực Nút là thực phẩm có hàm lượng dinh dưỡng cao, dễ chế biến, làm được nhiều món ăn ngon. Thịt mực nang màu trắng, thớ dày và có vị ngọt, kết hợp vị nồng nàn của biển trong từng thớ thịt mực giòn sần sật, ngọt ngào. Mực Nang là mặt hàng xuất khẩu lớn của Việt Nam trên thị trường quốc tế.', 0),
('MO', 'HST', 'Mực ống', 'kg', 200000, 'mucong.png', 'Mực ống (danh pháp khoa học: Teuthida) là một nhóm động vật biển thuộc siêu bộ Mười chân (Decapodiformes) của lớp Chân đầu (Cephalopoda). Mực ống có phần thân và phần đầu rõ ràng. Thân cân xứng hai phía, có da và có 6 \"tay\" và 2 \"chi\". Mực ống có chứa hợp chất mực màu đen trong cơ thể, khi gặp nguy hiểm, mực phun ra tạo màn đen dày đặc, qua đó lẩn trốn khỏi nguy cơ đe dọa.', 0),
('MS', 'HST', 'Mực sữa', 'kg', 230000, 'mucsua.png', 'Mực sữa (mực cơm)  có kích thước chỉ lớn hơn ngón tay trỏ và xuất hiện nhiều ở vùng biển miền Trung Việt Nam. Mực sữa được đánh bắt trong ngày và cấp đông tại chỗ nên chất lượng thịt đảm bảo, khi ăn sẽ cảm nhận được vị ngọt, thớ thịt săn chắc không bở. Mực sữa và một số loại mực khác là loại thực phẩm chứa nhiều đạm, chất béo, canxi, phospho, sắt, các loại vitamin B1, B2…rất tốt cho sức khỏe.', 0),
('OC', 'RCT', 'Ot chuong da lat', 'kg', 45000, 'otdalat.jpg', 'Một con sông nhỏ tên là Duden chảy ngang qua nơi ở của họ và cung cấp cho nó những chất dinh dưỡng cần thiết.', 0),
('TT', 'TCT', 'Tao Ta', 'kg', 35000, 'tao.jpg', 'Táo có thể chỉ đến một trong các khái niệm sau:\r\n• Họ Táo Rhamnaceae\r\n• Táo tây\r\n• Một số loài thuộc chi Prunus, phương ngữ Nam Bộ gọi là táo, phương ngữ Bắc Bộ gọi là mận.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nhom`
--

DROP TABLE IF EXISTS `nhom`;
CREATE TABLE IF NOT EXISTS `nhom` (
  `manhom` char(10) NOT NULL,
  `tennhom` varchar(100) DEFAULT NULL,
  `iconnhom` text NOT NULL,
  PRIMARY KEY (`manhom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhom`
--

INSERT INTO `nhom` (`manhom`, `tennhom`, `iconnhom`) VALUES
('A', 'Hải sản', 'iconseafood.png'),
('B', 'Rau củ', 'iconraucu.png'),
('C', 'Trái cây', 'icontraicay1.png');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loaihang`
--
ALTER TABLE `loaihang`
  ADD CONSTRAINT `loaihang_ibfk_1` FOREIGN KEY (`manhom`) REFERENCES `nhom` (`manhom`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mathang`
--
ALTER TABLE `mathang`
  ADD CONSTRAINT `mathang_ibfk_1` FOREIGN KEY (`malh`) REFERENCES `loaihang` (`malh`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
