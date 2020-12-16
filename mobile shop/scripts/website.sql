-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1:3307
-- Čas generovania: St 16.Dec 2020, 18:29
-- Verzia serveru: 10.4.14-MariaDB
-- Verzia PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `website`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cart_items`
--

CREATE TABLE `cart_items` (
                              `id` int(11) NOT NULL,
                              `product_id` int(11) NOT NULL,
                              `quantity` double NOT NULL,
                              `user_id` int(11) NOT NULL,
                              `created` datetime NOT NULL,
                              `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `products`
--

CREATE TABLE `products` (
                            `id` int(11) NOT NULL,
                            `name` varchar(512) NOT NULL,
                            `description` text NOT NULL,
                            `price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='products that can be added to cart';

--
-- Sťahujem dáta pre tabuľku `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created`, `modified`) VALUES
(1, 'Apple iPhone 11 ', '&lt;p&gt;•BODY: Aluminum frame, Gorilla Glass front with oleophobic coating, Gorilla Glass back with glossy finish, IP68 certified for water and dust resistance. Black, Green, Yellow, Purple, White, and Red color options.&lt;/p&gt;&lt;p&gt;\r\n\r\n•SCREEN: 6.1\" IPS LCD screen of 828 x 1792 px resolution, 326ppi, 625 nits, 120Hz touch sensing, wide color gamut. True Tone adjustment via a six-channel ambient light sensor.&lt;/p&gt;&lt;p&gt;\r\n\r\n•OS: Apple iOS 13&lt;/p&gt;&lt;p&gt;\r\n\r\n•CHIPSET: Apple A13 Bionic chip (7nm+) - Hexa-core (2x2.66 GHz Lightning + 4x1.8 GHz Thunder) Apple CPU, four-core Apple GPU, 8-core Apple NPU 3-gen\r\nMEMORY: 4GB of RAM; 64/128/256GB of internal storage&lt;/p&gt;&lt;p&gt;\r\n\r\n•CAMERA: Dual 12MP camera: 26mm main wide-angle, F/1.8, OIS, Dual Pixel AF; 13mm ultra wide-angle, F/2.4, 120-degree field of view; quad-LED flash with slow sync&lt;/p&gt;&lt;p&gt;\r\n\r\n•VIDEO RECORDING: 2160p@60/30fps, 1080p@30/60/120/240fps video recording with wider dynamic range and spatial sound, OIS + EIS&lt;/p&gt;&lt;p&gt;\r\n\r\n•SELFIE: Dual camera - 23mm 12MP F/2.2 front-facing camera with HDR mode + 3D TOF camera; 2160p@60/30fps, 1080p@30/60/120fps video recording with wider dynamic range and spatial sound, EIS, depth detection for Portrait mode\r\nCONNECTIVITY: Dual SIM, 4G LTE (1 Gbps); Wi-Fi a/b/g/n/ac/ax; Bluetooth 5.0; Lightning port; GPS with A-GPS, GLONASS, GALILEO, QZSS; NFC; Apple U1 chip ultrawideband&lt;/p&gt;&lt;p&gt;\r\n\r\n•BATTERY: 3,110 mAh battery, 18W fast charging, Qi wireless charging&lt;/p&gt;&lt;p&gt;\r\n\r\n•MISC: Face ID through dedicated TrueDepth camera, stereo speakers, Taptic Engine', 702.10, '2020-12-09 20:01:12', '2020-12-09 12:58:02'),
(2, 'Motorola Moto G9 Plus', '&lt;p&gt;•BODY: 168.0x74.0x9.0mm, 207g; Plastic frame and back; Splash resistant.&lt;/p&gt;&lt;p&gt;\r\n\r\n•DISPLAY: 6.70\" LCD capacitive, 1080x2520px resolution, 21:9 aspect ratio, 409ppi; 90Hz refresh rate, HDR10.&lt;/p&gt;&lt;p&gt;\r\n\r\n•CHIPSET: Qualcomm SDM765 Snapdragon 765 (7 nm): Octa-core (1x2.3 GHz Kryo 475 Prime & 1x2.2 GHz Kryo 475 Gold & 6x1.8 GHz Kryo 475 Silver); Adreno 620.\r\nMEMORY: 64GB 4GB RAM, 128GB 6GB RAM; UFS 2.1; microSDXC (uses shared SIM slot).&lt;/p&gt;&lt;p&gt;\r\n\r\n•OS/SOFTWARE: Android 10.&lt;/p&gt;&lt;p&gt;\r\n\r\n•REAR CAMERA: Wide (main): 48 MP, f/1.7, 26mm (wide), 1/2.0\", 0.8µm, PDAF; Ultra wide angle: 8 MP, f/2.2, 118? (ultrawide), 1.12µm; Macro: 5 MP, f/2.2, (macro), AF; Depth: 2 MP, f/2.2, (depth); Dual-LED flash, panorama, HDR.&lt;/p&gt;&lt;p&gt;\r\n\r\n•FRONT CAMERA: Wide (main): 16 MP, f/2.0, (wide), 1.0µm; Ultra wide angle: 8 MP, f/2.2, (ultrawide), 1.12µm; HDR.&lt;/p&gt;&lt;p&gt;\r\n\r\n•VIDEO CAPTURE: Rear camera: 4K@30fps, 1080p@30/60fps; Front camera: 1080p@30fps.&lt;/p&gt;&lt;p&gt;\r\n\r\n•BATTERY: 5000mAh; Fast charging 20W.&lt;/p&gt;&lt;p&gt;\r\n\r\n•MISC: Fingerprint (side-mounted), NFC; FM radio.', 200.23, '2020-12-09 20:03:25', '2020-12-09 12:59:10'),
(3, 'Samsung Galaxy Z Fold 2 5G', '&lt;p&gt;•BODY: 159.2x128.2x6.9mm, 282g; Corning Gorilla Glass Victus front (folded), plastic front (unfolded), Corning Gorilla Glass 6 back, aluminum frame; Samsung Pay (Visa, MasterCard certified); Colors: Mystic Bronze, Mystic Black, Thom Browne Edition.&lt;/p&gt;&lt;p&gt;\r\n\r\n•DISPLAY: 7.60\" Foldable Dynamic, 1768x2208px resolution, 11.24:9 aspect ratio, 373ppi; HDR10+, 120Hz refresh rate, Cover display: 6.23\", Super AMOLED, 816 x 2260 pixels (25:9).&lt;/p&gt;&lt;p&gt;\r\n\r\n•CHIPSET: Qualcomm SM8250 Snapdragon 865+ (7 nm+): Octa-core (1x3.09 GHz Kryo 585 & 3x2.42 GHz Kryo 585 & 4x1.8 GHz Kryo 585); Adreno 650.\r\n•MEMORY: 256GB 12GB RAM, 512GB 12GB RAM; UFS 3.1.&lt;/p&gt;&lt;p&gt;\r\n\r\n•OS/SOFTWARE: Android 10, One UI 2.5.&lt;/p&gt;&lt;p&gt;\r\n\r\n•REAR CAMERA: Wide (main): 12 MP, f/1.8, 26mm (wide), 1/1.76\", 1.8µm, Dual Pixel PDAF, OIS; Telephoto: 12 MP, f/2.4, 52mm (telephoto), 1/3.6\", 1.0µm, PDAF, OIS, 2x optical zoom; Ultra wide angle: 12 MP, f/2.2, 123-degree, 12mm (ultrawide), 1.12µm; LED flash, HDR, panorama.&lt;/p&gt;&lt;p&gt;\r\n\r\n•FRONT CAMERA: Wide (main): 10 MP, f/2.2, 26mm (wide) - identical ones on the outside and inside of phone; HDR.&lt;/p&gt;&lt;p&gt;\r\n\r\n•VIDEO CAPTURE: Rear camera: 4K@60fps, 1080p@60/240fps (gyro-EIS), 720p@960fps (gyro-EIS), HDR10+; Front camera: 4K@30fps, 1080p@30fps, gyro-EIS.&lt;/p&gt;&lt;p&gt;\r\n\r\n•BATTERY: 4500mAh; Fast charging 25W, Fast wireless charging 11W, Reverse wireless charging 4.5W.&lt;/p&gt;&lt;p&gt;\r\n\r\n•MISC: Fingerprint (side-mounted), Stereo speakers, accelerometer, gyro, proximity, compass, barometer; NFC; ANT+, Bixby natural language commands and dictation, Samsung DeX (desktop experience support).\r\n\r\n', 1798.54, '2020-12-09 20:03:59', '2020-12-09 13:02:10'),
(4, 'Samsung Galaxy M21 ', 'NO DESCRIPTION YET!', 221.99, '2020-12-09 20:04:48', '2020-12-09 13:05:16'),
(5, 'Huawei P30 Lite ', '&lt;p&gt;•BODY: Dual-glass with plastic frame; Peacock Blue, Midnight Black, Pearl White color schemes; 159g.&lt;/p&gt;&lt;p&gt;\r\n\r\n•SCREEN: 6.15\" LTPS IPS LCD, 1,080x2,312px resolution (415ppi); waterdrop notch.&lt;/p&gt;&lt;p&gt;\r\n\r\n•CHIPSET: Kirin 710 chipset, octa-core processor (4x2.2GHz Cortex-A73 + 4x1.7GHz Cortex-A53), Mali-G51 MP14 GPU.&lt;/p&gt;&lt;p&gt;\r\n\r\n•MEMORY: 4/6GB RAM, 128GB storage (expandable via a microSD - hybrid slot).;/p&gt;&lt;p&gt;\r\n\r\n•OS: Android 9 Pie with EMUI 9.0.&lt;/p&gt;&lt;p&gt;\r\n\r\n•CAMERA: Main: 48MP, f/1.8, 27mm, PDAF; ultra wide: 8MP, f/2.4, 17mm, fixed-focus; depth sensor: 2MP, f/2.4; Video: 1080p@30/60fps capture, EIS.&lt;/p&gt;&lt;p&gt;\r\n\r\n•SELFIE CAM: 24MP, f/2.0, Portrait Mode with live bokeh effects.&lt;/p&gt;&lt;p&gt;\r\n\r\n•BATTERY: 3,340mAh; Fast Charge 18W.&lt;/p&gt;&lt;p&gt;\r\n\r\n•CONNECTIVITY: Dual SIM, Wi-Fi a/b/g/n/ac; GPS; Bluetooth 4.2 + LE, NFC, USB Type-C, 3.5mm jack.&lt;/p&gt;&lt;p&gt;\r\n\r\n•MISC: Rear-mounted fingerprint scanner, single bottom-firing loudspeaker.\r\n\r\n', 223.19, '2020-12-09 20:06:16', '2020-12-09 13:06:12'),
(6, 'Honor 20 ', '&lt;p&gt;•BODY: 154.6 x 74 x 8.44 mm, 182 grams, glass front and back, metal side frame.&lt;/p&gt;&lt;p&gt;\r\n\r\n•SCREEN: 6.26\" All-view IPS LCD, 1080 x 2340px resolution; 412 ppi.&lt;/p&gt;&lt;p&gt;\r\n\r\n•CHIPSET: HiSilicon Kirin 980 CPU; (2x2.6 GHz Cortex-A76 & 2x1.92 GHz Cortex-A76 & 4x1.8 GHz Cortex-A55); Mali-G76 MP10.&lt;/p&gt;&lt;p&gt;\r\n\r\n•MEMORY: 6GB RAM, 128GB built-in storage.&lt;/p&gt;&lt;p&gt;\r\n\r\n•OS: Magic 2.1 UI based on Android 9.0 Pie.&lt;/p&gt;&lt;p&gt;\r\n\r\n•REAR CAMERA: Main: 48MP, f/1.8, PDAF, EIS, AIS; Ultra-wide: 16MP, f/2.2, 117Â° FOV, no AF; Macro: 2MP, f/2.4, 4cm fixed focus; LED flash; Depth sensor: 2MP, f/2.4; 2160p@30 video recording with all cameras except for the macro.&lt;/p&gt;&lt;p&gt;\r\n\r\n•FRONT CAMERA: 32MP, f/2.0; 1080p@30fps video recording.&lt;/p&gt;&lt;p&gt;\r\n\r\n•BATTERY: 3,750 mAh, 22.5W SuperCharge fast charging.&lt;/p&gt;&lt;p&gt;\r\n\r\n•MISC: IR blaster, NFC, side-mounted fingerprint reader, punch-hole camera design, Virtual 9.1 Surround Sound (with headphones only), Dynamic Holographic back design coming in Midnight Black, Sapphire Blue, Icelandic White\r\n\r\n', 201.98, '2020-12-09 20:07:46', '2020-12-09 13:09:58'),
(7, 'Xiaomi Redmi 9', '&lt;p&gt;•BODY: 163.3 x 77 x 9.1 mm, 198g; Gorilla Glass 3 front, plastic back and frame.&lt;/p&gt;&lt;p&gt;\r\n\r\n•SCREEN: 6.53\" IPS LCD, 1080 x 2340px resolution, 19.5:9 aspect ratio, 395ppi.&lt;/p&gt;&lt;p&gt;\r\n\r\n•CHIPSET: MediaTek Helio G80 (12nm): Octa-core (2x2.0 GHz Cortex-A75 & 6x1.8 GHz Cortex-A55); Mali-G52 MC2 GPU.&lt;/p&gt;&lt;p&gt;\r\n\r\n•MEMORY: 3GB/4GB/6GB RAM, 32GB/64GB/128GB storage, dedicated microSD slot.&lt;/p&gt;&lt;p&gt;\r\n\r\n•OS/SOFTWARE: Android 10, MIUI 11 (MIUI 12 update coming soon)&lt;/p&gt;&lt;p&gt;\r\n\r\n•REAR CAMERA: Main: 13MP, f/2.2 aperture, 1/3.1\" sensor, 1.12µm pixel size, 28mm equiv., PDAF. Ultrawide-angle: 8MP, f/2.2, 1/4.0\" sensor, 1.12µm pixels, fixed focus; Macro: 5MP, f/2.4, AF; 2MP depth sensor.&lt;/p&gt;&lt;p&gt;\r\n\r\n•FRONT CAMERA: 8MP, f/2.0, 1.12µm.&lt;/p&gt;&lt;p&gt;\r\n\r\n•VIDEO RECORDING: Rear camera: Full HD 1080p@30fps. Front camera: Full HD 1080p@30fps.&lt;/p&gt;&lt;p&gt;\r\n\r\n•BATTERY: 5,020 mAh, 18W fast charging (10W charger included)&lt;/p&gt;&lt;p&gt;\r\n\r\n•MISC: NFC (market dependent); wireless FM radio, rear-mounted fingerprint reader, IR blaster;\r\n\r\n', 330.00, '2020-12-09 20:09:03', '2020-12-09 13:11:45'),
(8, 'Motorola Moto G 5G Plus ', '&lt;p&gt;•BODY: 168.0x74.0x9.0mm, 207g; Plastic frame and back; Splash resistant.&lt;/p&gt;&lt;p&gt;\r\n\r\n•DISPLAY: 6.70\" LCD capacitive, 1080x2520px resolution, 21:9 aspect ratio, 409ppi; 90Hz refresh rate, HDR10.&lt;/p&gt;&lt;p&gt;\r\n\r\n•CHIPSET: Qualcomm SDM765 Snapdragon 765 (7 nm): Octa-core (1x2.3 GHz Kryo 475 Prime & 1x2.2 GHz Kryo 475 Gold & 6x1.8 GHz Kryo 475 Silver); Adreno 620.&lt;/p&gt;&lt;p&gt;\r\n\r\n•MEMORY: 64GB 4GB RAM, 128GB 6GB RAM; UFS 2.1; microSDXC (uses shared SIM slot).&lt;/p&gt;&lt;p&gt;\r\n\r\n•OS/SOFTWARE: Android 10.&lt;/p&gt;&lt;p&gt;\r\n\r\n•REAR CAMERA: Wide (main): 48 MP, f/1.7, 26mm (wide), 1/2.0\", 0.8µm, PDAF; Ultra wide angle: 8 MP, f/2.2, 118? (ultrawide), 1.12µm; Macro: 5 MP, f/2.2, (macro), AF; Depth: 2 MP, f/2.2, (depth); Dual-LED flash, panorama, HDR.&lt;/p&gt;&lt;p&gt;\r\n\r\n•FRONT CAMERA: Wide (main): 16 MP, f/2.0, (wide), 1.0µm; Ultra wide angle: 8 MP, f/2.2, (ultrawide), 1.12µm; HDR.&lt;/p&gt;&lt;p&gt;\r\n\r\n•VIDEO CAPTURE: Rear camera: 4K@30fps, 1080p@30/60fps; Front camera: 1080p@30fps.&lt;/p&gt;&lt;p&gt;\r\n\r\n•BATTERY: 5000mAh; Fast charging 20W.&lt;/p&gt;&lt;p&gt;\r\n\r\n•MISC: Fingerprint (side-mounted), NFC; FM radio.\r\n\r\n', 378.54, '2020-12-09 20:10:47', '2020-12-09 13:13:02'),
(9, 'Apple iPhone 12  ', '&lt;p&gt;•BODY: Aluminum frame with matte finish, Ceramic Shield front with oleophobic coating, Glass back with glossy finish, IP68 certified for water and dust resistance. Black, White, Green, Blue, Red color options. 146.7 x 71.5 x 7.4 mm, 164 g.&lt;/p&gt;&lt;p&gt;\r\n\r\n•DISPLAY: 6.1\" Retina XDR OLED screen of 1170 x 2532 px resolution, 460ppi, 600 nits, 120Hz touch sensing. HDR10, Dolby Vision support, wide color gamut. True Tone.&lt;/p&gt;&lt;p&gt;\r\n\r\n•CHIPSET: Apple A14 Bionic chip (5nm) - Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm with 3.1GHz Turboboost) Apple CPU, four-core Apple GPU, 16-core Apple NPU 4-gen&lt;/p&gt;&lt;p&gt;\r\n\r\n•MEMORY: 4GB of RAM; 64/128/256GB of internal storage&lt;/p&gt;&lt;p&gt;\r\n\r\n•REAR CAMERA: Dual 12MP camera: 26mm main wide-angle, F/1.6, OIS, Dual Pixel AF; 13mm ultrawide-angle, F/2.4, 120-degree field of view; dual-LED flash with slow sync. Night Mode, Smart HDR 3, Deep Fusion.&lt;/p&gt;&lt;p&gt;\r\n\r\n•VIDEO RECORDING: 2160p@60/30fps, 1080p@30/60/120/240fps video recording with wider dynamic range and spatial sound, OIS + EIS, Dolby Vision (30fps only)&lt;/p&gt;&lt;p&gt;\r\n\r\n•FRONT CAMERA: Dual camera - 23mm 12MP F/2.2 front-facing camera with HDR mode + 3D TOF camera; Night Mode, Smart HDR 3, Deep Fusion. 2160p@60/30fps, 1080p@30/60/120fps video recording with wider dynamic range and spatial sound, EIS.&lt;/p&gt;&lt;p&gt;\r\n\r\n•CONNECTIVITY: Dual SIM, 5G, 4G; Wi-Fi a/b/g/n/ac/6; Bluetooth 5.0; Lightning port; GPS with A-GPS, GLONASS, GALILEO, QZSS; NFC; Apple U1 chip ultrawideband&lt;/p&gt;&lt;p&gt;\r\n\r\n•BATTERY: 2,815 mAh battery, 20W fast charging, 15 Qi wireless charging (MagSafe)&lt;/p&gt;&lt;p&gt;\r\n\r\n•MISC: Face ID through dedicated TrueDepth camera, stereo speakers, Taptic Engine\r\n\r\n', 1084.39, '2020-12-09 20:11:59', '2020-12-09 13:13:59'),
(10, 'Nokia 8.3 5G', 'NO DESCRIPTION YET!', 654.21, '2020-12-09 20:13:00', '2020-12-09 13:15:22'),
(11, 'Nokia 5.3 ', 'NO DESCRIPTION YET!', 224.09, '2020-12-09 20:14:07', '2020-12-09 13:16:49'),
(12, 'Huawei P Smart 2021', '&lt;p&gt;•BODY: 165.7x76.9x9.3mm, 206g; Colors: Crush Green, Blush Gold, Midnight Black.&lt;/p&gt;&lt;p&gt;\r\n\r\n•DISPLAY: 6.67\" IPS LCD, 1080x2400px resolution, 20:9 aspect ratio, 395ppi.&lt;/p&gt;&lt;p&gt;\r\n\r\n•CHIPSET: Kirin 710A (14 nm): Octa-core (4x2.0 GHz Cortex-A73 & 4x1.7 GHz Cortex-A53); Mali-G51 MP4.&lt;/p&gt;&lt;p&gt;\r\n\r\n•MEMORY: 128GB 4GB RAM; microSDXC (dedicated slot).&lt;/p&gt;&lt;p&gt;\r\n\r\n•OS/SOFTWARE: Android 10, EMUI 10.1, no Google Play Services.&lt;/p&gt;&lt;p&gt;\r\n\r\n•REAR CAMERA: Wide (main): 48 MP, f/1.8, 26mm, 1/2.0\", 0.8µm, PDAF; Ultra wide angle: 8 MP, f/2.4, 120?; Macro: 2 MP, f/2.4; Depth: 2 MP, f/2.4; LED flash, HDR, panorama.&lt;/p&gt;&lt;p&gt;\r\n\r\n•FRONT CAMERA: 8 MP, f/2.0; HDR.&lt;/p&gt;&lt;p&gt;\r\n\r\n•VIDEO CAPTURE: Rear camera: 1080p@60/30fps; Front camera: 1080p@30fps.&lt;/p&gt;&lt;p&gt;\r\n\r\n•BATTERY: 5000mAh; Fast charging 22.5W.&lt;/p&gt;&lt;p&gt;\r\n\r\n•MISC: Fingerprint (side-mounted), accelerometer, proximity, compass, FM radio.\r\n\r\n', 198.48, '2020-12-09 20:15:28', '2020-12-09 13:17:38'),
(13, 'Asus Zenfone 7 ZS670KS', 'NO DESCRIPTION YET!', 799.98, '2020-12-09 20:17:08', '2020-12-09 13:19:03'),
(14, 'LG Velvet', 'NO DESCRIPTION YET!', 466.35, '2020-12-09 20:18:44', '2020-12-09 13:21:31'),
(15, 'Samsung Galaxy A51', '&lt;p&gt;•BODY: Glass front (Gorilla Glass 3), polycarbonate back and frame.&lt;/p&gt;&lt;p&gt;\r\n\r\n•SCREEN: 6.5-inch Super AMOLED, 20:9, FHD+ (1080x2400px), 405ppi.&lt;/p&gt;&lt;p&gt;\r\n\r\n•REAR CAMERA: Primary: 48MP, 1/2\" sensor size, 0.8µm pixel size, 26mm equiv. focal length, f/2.0 aperture. Ultra wide angle: 12MP, 1.12µm, 13mm, f/2.2. Macro: 5MP, 25mm, f/2.4. Depth sensor: 5MP, 1/5\", 1.12µm, f/2.2. LED flash; 2160p@30fps video recording.&lt;/p&gt;&lt;p&gt;\r\n\r\n•FRONT CAMERA: 32MP, 1/2.8\", 0.8µm, 26mm, f/2.2. 1080p@30fps video recording.&lt;/p&gt;&lt;p&gt;\r\n\r\n•CHIPSET: Exynos 9611: octa-core CPU (4x2.3 GHz Cortex-A73 & 4x1.7 GHz Cortex-A53), Mali-G72 MP3 GPU.&lt;/p&gt;&lt;p&gt;\r\n\r\n•MEMORY: 4/64GB, 4/128GB, or 6/128GB versions, UFS 2.0; dedicated microSD slot for up to 1TB expansion.&lt;/p&gt;&lt;p&gt;\r\n\r\n•OS: Android 10; Samsung One UI 2.0.&lt;/p&gt;&lt;p&gt;\r\n\r\n•BATTERY: 4,000mAh, 15W charging.&lt;/p&gt;&lt;p&gt;\r\n\r\n•CONNECTIVITY: Dual SIM (4G), Bluetooth 5.0, Wi-Fi a/b/g/n/ac, USB-C; 3.5mm audio jack.&lt;/p&gt;&lt;p&gt;\r\n\r\n•MISC: Under-display fingerprint reader, single bottom-firing loudspeaker.\r\n\r\n', 318.04, '2020-12-09 20:19:30', '2020-12-09 13:22:53'),
(16, 'Sony Xperia 1', '&lt;p&gt;•BODY: Aluminum frame; Gorilla Glass 6 on back and front; 167 x 72 x 8.2 mm; 178 grams; IP65/68 ingress protection rating; Color options: Black, Grey, Purple, White&lt;/p&gt;&lt;p&gt;\r\n\r\n•SCREEN: 6.5\" OLED; 21:9 aspect ratio; 4K (1644 x 3840 px); 643ppi; HDR BT.2020; DCI-P3 color space&lt;/p&gt;&lt;p&gt;\r\n\r\n•REAR CAMERAS: Primary: Motion Eye 12MP (1/2.6\" Exmor RS), f/1.6 aperture (ISO 3200), 26mm lens, Dual Photo Diode; 12MP (1/3.4\") telephoto, f/2.4, 52mm lens; 12MP (1/3.4\") wide, f/2.4, 16mm&lt;/p&gt;&lt;p&gt;\r\n\r\n•ADDITIONAL CAMERA FEATURES: Predictive Capture (Motion/Smile), Autofocus burst with up to 10 fps AE/AE tracking; Eye Autofocus; Predictive Hybrid Autofocus; Anti-distortion shutter; Optical SteadyShot with Intelligent Active Mode (5-axis EIS + OIS); RAW noise reduction&lt;/p&gt;&lt;p&gt;\r\n\r\n•VIDEO CAPTURE: 4K (16:9 or 21:9), Super slow motion 960fps at FullHD&lt;/p&gt;&lt;p&gt;\r\n\r\n•FRONT CAMERA: 8MP (1/4\" sensor), f/2.0 fixed-focus&lt;/p&gt;&lt;p&gt;\r\n\r\n•CHIPSET: Snapdragon 855 chipset, octa-core processor (1x2.84 GHz Kryo 485 & 3x2.42 GHz Kryo 485 & 4x1.8 GHz Kryo 485), Adreno 640 GPU.&lt;/p&gt;&lt;p&gt;\r\n\r\n•MEMORY: 6GB of RAM + 64/128GB storage; Up to 512GB microSD card support&lt;/p&gt;&lt;p&gt;\r\n\r\n•OS: Android 9.0 Pie&lt;/p&gt;&lt;p&gt;\r\n\r\n•BATTERY: 3,330mAh Li-Ion; USB Power Delivery fast charging; Smart STAMINA, Battery Care, Xperia Adaptive Charging&lt;/p&gt;&lt;p&gt;\r\n\r\n•CONNECTIVITY: Dual-SIM/ Single-SIM options available (market dependent); 5CA LTE 4x4 MIMO, Cat.19 LTE (Up to 1.6Gbps download speed); USB 3.1 Type-C; Wi-Fi a/b/g/n/ac; GPS + GLONASS; Bluetooth 5.0; NFC.&lt;/p&gt;&lt;p&gt;\r\n\r\n•AUDIO: Hybrid stereo speaker setup, Dolby Atmos, DSEE HX, LDAC, Qualcomm aptX HD&lt;/p&gt;&lt;p&gt;\r\n\r\n•MISC: Side-mounted fingerprint reader, X1 For mobile engine, TRILUMINOS display, BIONZ X for mobile (Eye autofocus); Cinema Pro app for cinematic video recording\r\n\r\n', 756.51, '2020-12-09 20:20:59', '2020-12-09 13:25:04'),
(17, 'Xiaomi POCO X3', 'NO DESCRIPTION YET!', 267.68, '2020-12-09 20:21:36', '2020-12-09 13:26:44'),
(18, 'Samsung Galaxy S10 Lite', '&lt;p&gt;•BODY: Glass front, plastic back, metal side frame&lt;/p&gt;&lt;p&gt;\r\n\r\n•SCREEN: 6.7-inch, 20:9, FHD+ (1080 x 2400px), Super AMOLED Plus&lt;/p&gt;&lt;p&gt;\r\n\r\n•REAR CAMERA: Primary 48MP, 1/2\" sensor size, 0.8µm pixels, f/2.0 aperture; Ultra wide-angle: 12MP, f/2.2 aperture, 12mm; Macro: 5MP, 1/5.0\" f/2.4; LED flash; 2160p@60fps video recording&lt;/p&gt;&lt;p&gt;\r\n\r\n•FRONT CAMERA: 32MP, f/2.2 aperture&lt;/p&gt;&lt;p&gt;\r\n\r\n•CHIPSET: Qualcomm Snapdragon 855: Octa-core (1x2.84 GHz Kryo 485 & 3x2.42 GHz Kryo 485 & 4x1.78 GHz Kryo 485), Adreno 640 GPU&lt;/p&gt;&lt;p&gt;\r\n\r\n•MEMORY: 6/128GB or 8/128GB UFS 2.1; microSD card support&lt;/p&gt;&lt;p&gt;\r\n\r\n•OS: Android 10; Samsung One UI 2.0 on top&lt;/p&gt;&lt;p&gt;\r\n\r\n•BATTERY: 4,500mAh, 25W/45W USB PD 3.0 charging&lt;/p&gt;&lt;p&gt;\r\n\r\n•CONNECTIVITY: Dual SIM (4G), Bluetooth 5.0, Wi-Fi a/b/g/n/ac, USB-C; 3.5mm audio jack&lt;/p&gt;&lt;p&gt;\r\n\r\n•MISC: Under-display optic fingerprint reader, NFC, no 3.5mm audio jack.\r\n\r\n', 549.97, '2020-12-09 20:23:40', '2020-12-09 13:28:21');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `product_images`
--

CREATE TABLE `product_images` (
                                  `id` int(11) NOT NULL,
                                  `product_id` int(11) NOT NULL,
                                  `name` varchar(512) NOT NULL,
                                  `created` datetime NOT NULL,
                                  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='image files related to a product';

--
-- Sťahujem dáta pre tabuľku `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `name`, `created`, `modified`) VALUES
(40, 18, 'p39.jpg', '2020-12-11 14:46:21', '2020-12-16 13:02:30'),
(39, 17, 'p38.jpg', '2020-12-11 14:44:06', '2020-12-16 13:00:26'),
(38, 16, 'p37.jpg', '2020-12-11 14:41:07', '2020-12-16 12:58:59'),
(37, 15, 'p36.jpg', '2020-12-11 14:39:43', '2020-12-16 12:57:43'),
(36, 14, 'p35.jpg', '2020-12-11 14:37:36', '2020-12-16 12:55:14'),
(35, 13, 'p34.jpg', '2020-12-11 14:34:16', '2020-12-16 12:52:02'),
(34, 12, 'p33.jpg', '2020-12-11 14:32:48', '2020-12-16 12:50:32'),
(4, 4, 'p4.jpg', '2020-12-10 14:59:56', '2020-12-15 11:59:48'),
(5, 5, 'p5.jpg', '2020-12-10 15:02:07', '2020-12-15 12:01:40'),
(6, 6, 'p6.jpg', '2020-12-10 15:04:09', '2020-12-15 12:02:33'),
(7, 7, 'p7.jpg', '2020-12-10 15:05:49', '2020-12-15 12:04:26'),
(8, 8, 'p8.jpg', '2020-12-10 15:08:12', '2020-12-15 12:06:01'),
(9, 9, 'p9.jpg', '2020-12-10 15:10:27', '2020-12-15 12:07:31'),
(10, 10, 'p10.jpg', '2020-12-10 15:12:06', '2020-12-15 12:09:12'),
(11, 11, 'p11.jpg', '2020-12-10 15:13:29', '2020-12-15 12:10:18'),
(12, 12, 'p12.jpg', '2020-12-10 15:16:00', '2020-12-15 12:12:22'),
(13, 13, 'p13.jpg', '2020-12-10 15:18:11', '2020-12-15 12:13:49'),
(14, 14, 'p14.jpg', '2020-12-10 15:20:04', '2020-12-15 12:15:25'),
(15, 15, 'p15.jpg', '2020-12-10 15:21:51', '2020-12-15 12:16:55'),
(16, 16, 'p16.jpg', '2020-12-10 15:23:14', '2020-12-15 12:19:06'),
(17, 17, 'p17.jpg', '2020-12-10 15:25:08', '2020-12-15 12:21:48'),
(18, 18, 'p18.jpg', '2020-12-10 15:28:29', '2020-12-15 12:24:02'),
(19, 1, 'p19.jpg', '2020-12-10 13:27:42', '2020-12-15 13:02:15'),
(20, 1, 'p40.jpg', '2020-12-11 14:05:01', '2020-12-16 12:24:02'),
(21, 2, 'p20.jpg', '2020-12-11 14:07:11', '2020-12-16 12:26:08'),
(22, 3, 'p21.jpg', '2020-12-11 14:09:19', '2020-12-16 12:28:35'),
(23, 4, 'p22.jpg', '2020-12-11 14:12:03', '2020-12-16 12:29:58'),
(24, 5, 'p23.jpg', '2020-12-11 14:14:20', '2020-12-16 12:32:01'),
(25, 6, 'p24.jpg', '2020-12-11 14:16:36', '2020-12-16 12:34:19'),
(26, 7, 'p25.jpg', '2020-12-11 14:18:05', '2020-12-16 12:36:39'),
(27, 7, 'p26.jpg', '2020-12-11 14:19:41', '2020-12-16 12:38:21'),
(28, 8, 'p27.jpg', '2020-12-11 14:22:07', '2020-12-16 12:39:58'),
(29, 8, 'p28.jpg', '2020-12-11 14:24:12', '2020-12-16 12:41:44'),
(30, 9, 'p29.jpg', '2020-12-11 14:25:52', '2020-12-16 12:43:01'),
(31, 10, 'p30.jpg', '2020-12-11 14:27:39', '2020-12-16 12:45:16'),
(32, 10, 'p31.jpg', '2020-12-11 14:29:08', '2020-12-16 12:47:00'),
(33, 11, 'p32.jpg', '2020-12-11 14:30:59', '2020-12-16 12:48:45'),
(3, 3, 'p3.jpg', '2020-12-10 14:58:07', '2020-12-15 11:58:54'),
(2, 2, 'p2.jpg', '2020-12-10 14:56:02', '2020-12-15 11:57:34'),
(1, 1, 'p1.jpg', '2020-12-10 14:54:58', '2020-12-15 11:56:30');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `cart_items`
--
ALTER TABLE `cart_items`
    ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `products`
--
ALTER TABLE `products`
    ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `product_images`
--
ALTER TABLE `product_images`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `cart_items`
--
ALTER TABLE `cart_items`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pre tabuľku `products`
--
ALTER TABLE `products`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT pre tabuľku `product_images`
--
ALTER TABLE `product_images`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
