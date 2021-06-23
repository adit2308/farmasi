/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : db_farmasi

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2021-04-10 19:24:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(70) NOT NULL,
  `foto` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'c93ccd78b2076528346216b3b2f701e6', 'admin.png');

-- ----------------------------
-- Table structure for `barang`
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` text NOT NULL,
  `nama` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `ukuran` text NOT NULL,
  `kecil` text NOT NULL,
  `besar` text NOT NULL,
  `awal` int(11) NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `akhir` int(11) NOT NULL,
  `exp1` date NOT NULL,
  `exp2` date NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`id`,`nama`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of barang
-- ----------------------------
INSERT INTO `barang` VALUES ('1', 'BHP', 'ALKOHOL 70 % 1 L', 'ALKOHOL 70 %', '0', '1000 ml', '1 BOTOL', '', '3', '0', '0', '3', '2024-02-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('2', 'BHP', 'ALKOHOL 96% 1 L', 'ALKOHOL 96%', '0', '1000 ml', '1 BOTOL', '', '2', '0', '0', '2', '2020-12-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('3', 'BHP', 'ALKOHOL SWAB', 'ALKOHOL swab ONEMED JKN', '0', '0.7', '100 BUAH', '1 BOX', '232', '15', '0', '247', '2023-11-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('4', 'BHP', 'AQUABIDEST 1000 ML SWI', 'AQUABIDEST (k-swisteril water)', '0', '1000 ml', '1 BOTOL', '1 BOTOL', '40', '0', '0', '40', '2021-10-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('5', 'BHP', 'AQUABIDEST 50 ML', 'AQUABIDEST (k-swisteril water)', '0', '50 ml', '1 BOTOL', '1 BOTOL', '9', '0', '0', '9', '2022-11-24', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('6', 'BHP', 'AQUABIDEST ', 'AQUABIDEST ', '0', '500 ml', '1 BOTOL', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('7', 'BHP', 'ASEPTAN+DISPS 500ML ', 'ASEPTAN LIQUID', '0', '500 ml', '1 BOTOL', '1 BOTOL', '4', '0', '0', '4', '2025-05-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('8', 'BHP', 'BLOOD LANCET 26 G ONEMED', 'BLOOD LANCET 26 G ONEMED', '0', '26 G', '100 BUAH', '1 BOX', '63', '0', '0', '63', '2024-06-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('9', 'BHP', 'BLUE TIP', 'BLUE TIP', '0', '', '500 BUAH', '1 PACK', '14', '0', '0', '14', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('10', 'BHP', 'COVER GLASS 18X18 ASISTANT', 'COVER GLASS ', '0', '18 x 18 mm', '100 BUAH', '10 BOX KECIL/1BOX BESAR', '120', '0', '0', '120', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('11', 'BHP', 'EXTRAN NEUTRAL MERCK', 'EXTRAN NEUTRAL MERCK', '0', '2,5 liter', '1 BOTOL', '', '4', '0', '0', '4', '2023-12-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('12', 'BHP', 'GP MICRO TUBE EDTA K3', 'GP MICRO TUBE EDTA K3', '0', '0,5 ml', '100 BUAH', '1 BOX', '24', '0', '0', '24', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('13', 'BHP', 'HOLDER STANDARD YELLOW BULK CE', 'HOLDER STANDARD YELLOW BULK CE', '0', '', '1 BUAH', '', '50', '0', '0', '50', '2023-04-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('14', 'BHP', 'KERTAS SARING', 'KERTAS SARING', '0', 'panjang X lebar', '1 LEMBAR', '', '11', '0', '0', '11', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('15', 'BHP', 'LIDI WATEN STERIL', 'LIDI WATEN STERIL', '0', '', '100 BUAH', '1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('16', 'BHP', 'MASKER N 95', 'MASKER N 95', '0', '', '20 BUAH', '1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('17', 'BHP', 'NEEDLE FLASH BACK ', 'NEEDLE FLASH BACK ', '0', '22 X 1', '50 BUAH', '1 BOX', '470', '0', '0', '470', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('18', 'BHP', 'NEEDLE SYRINGE ', 'NEEDLE SYRINGE ', '0', '25 G X 1\"', '100 BUAH', '1 BOX', '6', '0', '0', '6', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('19', 'BHP', 'NITRILE EXAM GLOVE BLUEPLE ', 'NITRILE EXAM GLOVE BLUEPLE', '0', 'M', '100 BUAH', '1 BOX', '100', '0', '0', '100', '2021-08-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('20', 'BHP', 'NITRILE EXAM GLOVE BLUEPLE ', 'NITRILE EXAM GLOVE BLUEPLE', '0', 'S', '100 BUAH', '1 BOX', '70', '0', '0', '70', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('21', 'BHP', 'TOPI OPERASI', 'NURSE CUP ONE MED', '0', '', '100 BUAH', '1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('22', 'BHP', 'OSE STAINLESS', 'OSE', '0', '', '1 BUAH', '', '4', '0', '0', '4', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('23', 'BHP', 'PARAFILM 4\"', 'PARAFILM 4', '0', 'panjang X lebar', '1 ROLL', '1 BOX', '3', '0', '0', '3', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('24', 'BHP', 'PCR TUBE 1,5 ML', 'PCR TUBE  ', '0', '1,5 ml', '500 BUAH', '', '20', '0', '0', '20', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('25', 'BHP', 'MICROPORE 1\" + DISPENSER', 'PLESTER KERTAS/MICROPORE 1\" + DISPHENSER', '0', '', '1 ROLL', '', '46', '0', '0', '46', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('26', 'BHP', 'PLESTERIN BULAT ONEMED', 'PLESTERIN BULAT SOFT', '0', '', '200 BUAH', '', '80', '0', '0', '80', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('27', 'BHP', 'POT FEACES (FEACES CONTAINER)', 'POT FESES', '0', '', '500 BUAH', '1 PACK', '800', '0', '0', '800', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('28', 'BHP', 'Pot Plastik', 'Pot Plastik', '0', '100 ml', '1 BUAH', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('29', 'BHP', 'SAMPLE CUPS', 'SAMPLE CUPS', '0', '', '5000 BUAH', '', '35000', '0', '0', '35000', '2024-07-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('30', 'BHP', 'SHARP CELL CONTAINER', 'SHARP CELL CONTAINER', '0', '1,0 liter', '1 BUAH', '', '11', '0', '0', '11', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('31', 'BHP', 'SHARP CELL CONTAINER 5 L', 'SHARP CELL CONTAINER', '0', '5 liter', '1 BUAH', '', '7', '0', '0', '7', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('32', 'BHP', 'SHARP CELL CONTAINER 7 L', 'SHARP CELL CONTAINER', '0', '7 liter', '1 BUAH', '', '4', '0', '0', '4', '2023-10-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('33', 'BHP', 'SIKAT TABUNG KECIL ', 'SIKAT TABUNG', '0', '', '1 BUAH', '', '10', '0', '0', '10', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('34', 'BHP', 'SPIRTUS', 'SPIRTUS', '0', '', '1 BOTOL', '', '4', '0', '0', '4', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('35', 'BHP', 'POT DAHAK (SPUTUM POT 120 ML)', 'SPUTUM POT ', '0', '7 cm X 5 cm (120 ml)', '25 BUAH', '1 BOX', '626', '0', '0', '626', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('36', 'BHP', 'STABIMED', 'STABIMED', '0', '', '1 BOTOL', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('37', 'BHP', 'SURGICAL MASK ', 'SURGICAL MASK ', '0', '3 PLY E/L', '50 BUAH', '1 BOX', '0', '0', '0', '0', '2020-12-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('38', 'BHP', 'SURGICAL MASK ', 'SURGICAL MASK ', '0', '3 PLY PLUS E/L', '50 BUAH', '1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('39', 'BHP', 'SURGICAL MASK ', 'SURGICAL MASK ', '0', 'TIE ON E/L', '50 BUAH', '1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('40', 'BHP', 'SYRINGE (NIPRO)', 'SYRINGE (NIPRO)', '0', '3 ml', '100 BUAH', '1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('41', 'BHP', 'SYRINGE (TERUMO)', 'SYRINGE (TERUMO)', '0', '3 ml', '100 BUAH', '1 BOX', '1000', '0', '0', '1000', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('42', 'BHP', 'SYRINGE (NIPRO)', 'SYRINGE (NIPRO)', '0', '5 ml', '100 BUAH', '1 BOX', '23', '0', '0', '23', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('43', 'BHP', 'SYRINGE (STERA)', 'SYRINGE (STERA)', '0', '5 ml', '100 BUAH', '1 BOX', '0', '0', '0', '0', '2024-03-28', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('44', 'BHP', 'SYRINGE (TERUMO)', 'SYRINGE (TERUMO)', '0', '5 ml ', '100 BUAH', '1 BOX', '0', '0', '0', '0', '2024-10-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('45', 'BHP', 'SYRINGE ABG PRESET', 'SYRINGE ABG PRESET', '0', ' 3 (1,6) LL 22 X1 CE', '100 BUAH', '1 BOX', '100', '0', '0', '100', '2024-04-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('46', 'BHP', 'SYRINGE WING NEEDLE', 'SYRINGE WING NEEDLE', '0', '', '50 BUAH', '1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('47', 'BHP', 'TABUNG CENTRIFUGE', 'TABUNG CENTRIFUGE', '0', '', '10 BUAH', '1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('48', 'BHP', 'TABUNG SEROLOGI 12X75', 'TABUNG SEROLOGI 12X75', '0', '', '100 BUAH', '1 BOX', '0', '0', '0', '0', '2021-08-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('49', 'BHP', 'TOURNIQUET', 'TOURNIQUET', '0', '', '1 BUAH', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('50', 'BHP', 'TOURNIQUET ANAK', 'TOURNIQUET ANAK', '0', '', '1 BUAH', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('51', 'BHP', 'TRANSFER PIPET', 'TRANSFER PIPET', '0', '', '20 BUAH', '1 PACK', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('52', 'BHP', 'TRITIPLEX III / EDTA', 'TRITIPLEX III / EDTA', '0', '', '1 BOTOL', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('53', 'BHP', 'TUBE EDTA PLH ', 'TUBE EDTA PLH ', '0', '13 X 75 3 PLBL LAV', '12 BOX', '1 DUS ', '220', '0', '0', '220', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('54', 'BHP', 'TUSUK GIGI', 'TUSUK GIGI', '0', '', '12 PACK', '1 DUS ', '10', '0', '0', '10', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('55', 'BHP', 'URINE CONTAINER STERIL', 'URINE CONTAINER ', '0', '60 ml', '60 BUAH', '1 DUS ', '3180', '0', '0', '3180', '2020-08-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('56', 'BHP', 'VACULAB CITRAT ', 'VACULAB CITRAT ', '0', '3,2% 2,7 ml', '100 BUAH', '1 BOX', '2', '0', '0', '2', '2021-06-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('57', 'BHP', 'VACULAB PLAIN ', 'VACULAB PLAIN ', '0', '3 ml GLASS', '12 BUAH', '1 BOX', '240', '0', '0', '240', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('58', 'BHP', 'VTM SWAB', 'VTM SWAB', '0', '', '50 BUAH', '1 BOX ', '235', '0', '0', '235', '2024-04-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('59', 'BHP', 'WHITE TIPS 1000\'', 'WHITE TIPS 1000\'', '0', '', '1000 BUAH', '1 PACK', '3', '0', '0', '3', '2020-11-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('60', 'BHP', 'YELLOW TIP ', 'YELLOW TIP ', '0', '', '1000 BUAH', '1 PACK', '10', '0', '0', '10', '2021-05-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('61', 'BHP', 'TONG SPATEL', 'KRESEK 8 TEBAL HD 24', '0', '', '50 BUAH', '2 PACK', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('62', 'BHP', 'KRESEK 5 TEBAL TS 15', 'KRESEK 5 TEBAL TS 15', '0', '', '50 BUAH', '3 PACK', '3', '0', '0', '3', '2024-02-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('63', 'BHP', 'PLASIK KLIP ', 'PLASIK KLIP ', '0', '12X20', '100 BUAH', '1 PACK', '2', '0', '0', '2', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('64', 'BHP', 'TONG SPATEL', 'TONG SPATEL', '0', '', 'BUAH', '', '100', '0', '0', '100', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('65', 'BHP', 'SARUNG TANGAN GYNAECOLOG', 'SARUNG TANGAN (GYNAGCOLOG)', '0', '', 'BUAH', '', '3', '0', '0', '3', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('66', 'BHP', 'STRICIDE', 'STRICIDE', '0', '500 ML', 'BOTOL', '500 ml/1 BOTOL', '0', '0', '0', '0', '2023-10-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('67', 'BHP COVID-19 (HIBAH)', 'COVER ALL', 'COVER ALL', '0', '', '1 BUAH', '', '70', '0', '0', '70', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('68', 'BHP COVID-19 (HIBAH)', 'MASKER N 95 ', 'MASKER N 95', '0', '', '1 BUAH', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('69', 'BHP COVID-19 (HIBAH)', 'TABUNG SST  (GCL)', 'TABUNG SST  (GCL)', '0', '', '100 BUAH', '1 BOX', '6', '0', '0', '6', '2021-11-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('70', 'BHP COVID-19 (HIBAH)', 'MUCCUS EXTRACTOR/SPUTUM TRAP', 'MUCCUS EXTRACTOR/SPUTUM TRAP', '0', '', '25 BUAH', '1 DUS ', '0', '0', '0', '0', '2024-09-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('71', 'BHP COVID-19 (HIBAH)', 'COTTON SWAB STERIL', 'COTTON SWAB STERIL', '0', 'S', '100 BUAH', '1 BOX', '1', '0', '0', '1', '2023-12-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('72', 'BHP COVID-19 (HIBAH)', 'COTTON SWAB STERIL', 'COTTON SWAB STERIL', '0', 'M', '100 BUAH', '1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('73', 'BHP COVID-19 (HIBAH)', 'COVER SHOES 1X PAKAI (BHP)', 'COVER SHOES 1X PAKAI (BHP)', '0', '', '100 BUAH', '1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('74', 'BHP COVID-19 (HIBAH)', 'KACAMATA GOGLE', 'KACAMATA GOGLE', '0', '', '1 BUAH', '', '3', '0', '0', '3', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('75', 'BHP COVID-19 (HIBAH)', 'APRON PLASTIK 90X130CM', 'APRON PLASTIK (BHP)', '0', '', '10 BUAH', '1 PACK', '2', '0', '0', '2', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('76', 'BHP COVID-19 (HIBAH)', 'PLASTIK', 'PLASTIK', '0', '8,7 x 13', '100 BUAH', '1 PACK', '20', '0', '0', '20', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('77', 'BHP COVID-19 (HIBAH)', 'SEPATU BOOT', 'SEPATU BOOT', '0', '', 'BUAH', '', '1', '0', '0', '1', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('78', 'BHP COVID-19 (HIBAH)', 'APRON REUSE', 'SAMPLE CUPS', '0', '', 'BUAH', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('79', 'BHP COVID-19 (HIBAH)', 'VTM SWAB', 'VTM SWAB', '0', '', 'BUAH', '', '8', '0', '0', '8', '2021-10-17', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('80', 'BHP COVID-19 (HIBAH)', 'KANTONG PLASTIK LIMBAH', 'KANTONG PLASTIK LIMBAH', '0', '', 'BUAH', '1 PACK', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('81', 'SYSMEX XN 1000', 'XN CHECK ASSAY (LEVEL 1/3,0ml)', 'XN CHECK ASSAY (LEVEL 1/3,0ml)', '0', '', '1 VIAL', '', '1', '0', '0', '1', '2021-01-17', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('82', 'SYSMEX XN 1001', 'XN CHECK ASSAY (LEVEL 2/3,0ml)', 'XN CHECK ASSAY (LEVEL 2/3,0ml)', '0', '', '1 VIAL', '', '2', '0', '0', '2', '2021-01-17', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('83', 'SYSMEX XN 1002', 'XN CHECK ASSAY (LEVEL 3/3,0ml)', 'XN CHECK ASSAY (LEVEL 3/3,0ml)', '0', '', '1 VIAL', '', '2', '0', '0', '2', '2021-01-17', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('84', 'SYSMEX XN 1003', 'XN CHECK BF ASSAY (LEVEL 1/3,0ml)', 'XN CHECK BF ASSAY (LEVEL 1/3,0ml)', '0', '', '1 TUBE', '', '1', '0', '0', '1', '2021-01-17', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('85', 'SYSMEX XN 1004', 'XN CHECK BF ASSAY (LEVEL 2/3,0ml)', 'XN CHECK BF ASSAY (LEVEL 2/3,0ml)', '0', '', '1 TUBE', '', '1', '0', '0', '1', '2021-01-17', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('86', 'SYSMEX XN 1005', 'FLOUROCELL WNR', 'FLOUROCELL WNR', '0', '', '1 CATRIDGE', '', '3', '0', '0', '3', '2021-01-08', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('87', 'SYSMEX XN 1006', 'FLOUROCELL WDF', 'FLOUROCELL WDF', '0', '', '1 CATRIDGE', '', '4', '0', '0', '4', '2021-01-22', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('88', 'SYSMEX XN 1007', 'FLOUROCELL RET', 'FLOUROCELL RET', '0', '', '1 CATRIDGE', '', '5', '0', '0', '5', '2021-03-04', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('89', 'SYSMEX XN 1008', 'FLOUROCELL PLT', 'FLOUROCELL PLT', '0', '', '1 CATRIDGE', '', '3', '0', '0', '3', '2021-01-14', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('90', 'SYSMEX XN 1009', 'FLOUROCELL WPC', 'FLOUROCELL WPC', '0', '', '1 CATRIDGE', '', '3', '0', '0', '3', '2021-01-20', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('91', 'SYSMEX XN 1010', 'CELLPACK DCL', 'CELLPACK DCL', '0', '20 liter ', '1 BOX', '', '6', '0', '0', '6', '2021-09-26', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('92', 'SYSMEX XN 1011', 'SULFOLYSER SLS', 'SULFOLYSER SLS', '0', '', '1 PACK', '', '2', '0', '0', '2', '2021-03-11', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('93', 'SYSMEX XN 1012', 'CELLPACK DFL', 'CELLPACK DFL', '0', '', '1 PACK', '', '2', '0', '0', '2', '2021-05-13', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('94', 'SYSMEX XN 1013', 'LYSERCELL WPC', 'LYSERCELL WPC', '0', '', '1 PACK', '', '2', '0', '0', '2', '2020-12-20', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('95', 'SYSMEX XN 1014', 'LYSERCELL WNR', 'LYSERCELL WNR', '0', '', '1  BOX', '', '4', '0', '0', '4', '2021-02-28', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('96', 'SYSMEX XN 1015', 'LYSERCELL WDF', 'LYSERCELL WDF', '0', '', '1  BOX', '', '2', '0', '0', '2', '2021-03-23', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('97', 'SYSMEX XN 1016', 'CELLCLEAN AUTO', 'CELLCLEAN AUTO', '0', '', '1  BOX', '', '5', '0', '0', '5', '2021-05-19', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('98', 'SYSMEX XS', 'EIGHT-CECK H 4 X 1,5 ML (XS) Sysmex', 'E-CECK XS (High) 1,5 ml', '0', '1,5 ml', '1 VIAL', '', '2', '0', '0', '2', '2021-01-10', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('99', 'SYSMEX XS', 'EIGHT-CECK L 4 X 1,5 ML (XS) Sysmex', 'E-CECK XS (Low) 1,5 ml', '0', '1,5 ml', '1 VIAL', '', '1', '0', '0', '1', '2021-01-10', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('100', 'SYSMEX XS', 'EIGHT-CECK N 4 X 1,5 ML (XS) Sysmex', 'E-CECK XS (Normal) 1,5 ml', '0', '1,5 ml', '1 VIAL', '', '2', '0', '0', '2', '2021-01-10', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('101', 'SYSMEX XS', 'CELL CLEAN (CL-50)', 'CELL CLEAN (CL-50)', '0', '', '', '', '0', '0', '0', '0', '2020-10-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('102', 'SYSMEX XS', 'CELL PACK 20L', 'CELL PACK', '0', '20 liter ', '1 BOX', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('103', 'SYSMEX XS', 'STROMATOLYSER 4 DS', 'STROMATOLYSER 4 DS (FFS - 800A)', '0', '', '1 BOTOL', '', '0', '0', '0', '0', '2021-03-19', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('104', 'SYSMEX XS', 'SULFOLYSER SLS - 210 500 ML', 'SULFOLYSER SLS - 210A', '0', '300 ml', '1 BOTOL', '', '2', '0', '0', '2', '2021-02-03', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('105', 'SYSMEX XS', 'STROMATOLYSER 4 DL 2L', 'STROMATOLYSER 4 DL (2L)', '0', '2 liter', '1 BOX', '', '0', '0', '0', '0', '2021-04-20', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('106', 'KOAGULASI CA 50', 'CALSIUM CHLORIDE Sysmex', 'CALSIUM CHLORIDE', '0', '10 x 15 ml', '10 BOTOL', '10 BOTOL/1 BOX KECIL', '1', '0', '0', '1', '2024-04-08', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('107', 'KOAGULASI CA 51', 'CONTROL PLASMA N', 'CONTROL PLASMA N(10X 1 ML)', '0', '10 X 1 ml', '10 BOTOL', '10 BOTOL/1 BOX KECIL', '1', '0', '0', '1', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('108', 'KOAGULASI CA 52', 'DADE INNOVIN', 'DADE INNOVIN (10 X 4 ML)', '0', '10 X 4 ml', '10 BOTOL', '10 BOTOL/1 BOX KECIL', '2', '0', '0', '2', '2022-12-18', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('109', 'KOAGULASI CA 53', 'PATHROMTIN SL (APTT)', 'PATHROMIN SL(10 X5 ML)', '0', '10 X 5 ml', '10 BOTOL', '10 BOTOL/1 BOX KECIL', '1', '0', '0', '1', '2021-04-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('110', 'KOAGULASI CA 54', 'REACTION TUBE SU-40', 'REACTION TUBE(su-40)', '0', 'su-40 TUBE 40 su-40', '1000 BUAH', '1000 BUAH/1PACK', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('111', 'HEMATOLOGI LAINNYA ', 'AMONIUM OXALAT', 'AMMONIUM OXALAT 1 % 500 ML', '0', '500 ml', '1 BOTOL', '', '2', '0', '0', '2', '2022-08-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('112', 'HEMATOLOGI LAINNYA ', 'ASAM ACETAT', 'Asam Acetat 5 %', '0', '500 ml', '1 BOTOL', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('113', 'HEMATOLOGI LAINNYA ', 'BILIK HITUNG NEUBAUER ', 'BILIK HITUNG IMPROVE NEUBAUER ', '0', '', '1 BUAH', '', '2', '0', '0', '2', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('114', 'HEMATOLOGI LAINNYA ', 'BUFFER pH 7 MERCK', 'BUFFER pH 6,8 (7,0)', '0', '', '1 BOTOL', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('115', 'HEMATOLOGI LAINNYA ', 'COVER NEUBAUER SUPERIOR 24X40', 'COVER NEUBAUER', '0', '', '1 BUAH', '10 BUAH/1 BOX', '6', '0', '0', '6', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('116', 'HEMATOLOGI LAINNYA ', 'ETER ALKOHOL', 'ETER ALKOHOL', '0', '', '1 BOTOL', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('117', 'HEMATOLOGI LAINNYA ', 'FS OPTIUM NEO H BG TEST 100 STRIP', 'FS OPTIUM NEO H BG TEST 100 STRIP', '0', '100 STRIP', '1 BOX', '', '80', '0', '0', '80', '2021-06-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('118', 'HEMATOLOGI LAINNYA ', 'GIEMSA SOL MERCK', 'GIEMSA 500 ML MERCK', '0', '500 ml', '1 BOTOL', '', '3', '0', '0', '3', '2023-06-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('119', 'HEMATOLOGI LAINNYA ', 'HAYEM', 'HAYEM 500 ML ST', '0', '500  ml', '1 BOTOL', '', '1', '0', '0', '1', '2021-07-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('120', 'HEMATOLOGI LAINNYA ', 'KARTU GOL DARAH', 'KARTU GOL DARAH', '0', '100 LEMBAR', '1 PACK', '', '5', '0', '0', '5', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('121', 'HEMATOLOGI LAINNYA ', 'LARUTAN TURK', 'LARUTAN TURK 500 Ml', '0', '500 ml', '1 BOTOL', '', '2', '0', '0', '2', '2021-05-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('122', 'HEMATOLOGI LAINNYA ', 'LENS CLEANING PAPER', 'LENS CLEANING PAPER', '0', '', '1 PACK', '', '14', '0', '0', '14', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('123', 'HEMATOLOGI LAINNYA ', 'METHANOL MERCK 2,5 L', 'METHANOL MERCK 2,5 L', '0', '2,5 liter', '1 BOTOL', '', '1', '0', '0', '1', '2023-03-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('124', 'HEMATOLOGI LAINNYA ', 'Na. CITRAT 3.8% 500ML', 'NATRIUM CITRAT 3.8%', '0', '500 ml', '1 BOTOL', '', '1', '0', '0', '1', '2021-03-03', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('125', 'HEMATOLOGI LAINNYA ', 'REAGEN NONNE ST 100 ML', 'NONNE 100 ML ST', '0', '100 ml', '1 BOTOL', '', '1', '0', '0', '1', '2021-05-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('126', 'HEMATOLOGI LAINNYA ', 'OBJECT GLASS', 'OBJECT GLASS', '0', '72 BUAH ', '1 BOX', '', '40', '0', '0', '40', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('127', 'HEMATOLOGI LAINNYA ', 'IMERSION OIL 500 ML', 'OLI EMERSI 100 Ml', '0', '500 ml', '1 BOTOL', '', '1', '0', '0', '1', '2021-09-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('128', 'HEMATOLOGI LAINNYA ', 'REAGEN PANDY ST 100 ML ', 'PANDY 100 ML ST', '0', '100 ml', '1 BOTOL', '', '0', '0', '0', '0', '2021-05-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('129', 'HEMATOLOGI LAINNYA ', 'REES EACKER 500 ML ST', 'REES EACKER 500 ML ST', '0', '500 ml', '1 BOTOL', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('130', 'HEMATOLOGI LAINNYA ', 'SEDIPLAST', 'SEDIPLAST', '0', '100 PCS', '1 BOX', '', '0', '0', '0', '0', '2021-12-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('131', 'HEMATOLOGI LAINNYA ', 'ANTI A TULIP', 'TULIP ANTI A', '0', '10 ml', '1 VIAL', '', '1', '0', '0', '1', '2021-12-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('132', 'HEMATOLOGI LAINNYA ', 'ANTI AB TULIP', 'TULIP ANTI AB', '0', '10 ml', '1 VIAL', '', '2', '0', '0', '2', '2021-08-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('133', 'HEMATOLOGI LAINNYA ', 'ANTI B TULIP', 'TULIP ANTI B', '0', '10 ml', '1 VIAL', '', '4', '0', '0', '4', '2021-12-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('134', 'HEMATOLOGI LAINNYA ', 'ANTI D TULIP', 'TULIP ANTI D', '0', '10 ml', '1 VIAL', '', '5', '0', '0', '5', '2022-02-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('135', 'HEMATOLOGI LAINNYA ', 'WHITE TIPS 1000\'', 'WHITE TIPS 1000\'', '0', '1000 BUAH', '1 PACK', '', '3000', '0', '0', '3000', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('136', 'HEMATOLOGI LAINNYA ', 'WRIGHT EOSIN', 'WRIGHT EOSIN 500ML MERCK', '0', '500 ml', '1 BOTOL', '', '3', '0', '0', '3', '2021-02-28', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('137', 'HEMATOLOGI LAINNYA ', 'XYLOL 100 ML ST', 'XYLOL', '0', '100 ml', '1 BOTOL', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('138', 'HEMATOLOGI LAINNYA ', 'THERMAL PAPER 57 X 30', 'THERMAL PAPER ', '0', '57 mm x 30 m', '1 ROLL', '', '11', '0', '0', '11', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('139', 'COBAS E 411', 'ANTI HBS G2 ELECSYS COBAS E 100', 'ANTI HBS 62 ELECSYS', '0', '', '1 SET', '1 SET/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('140', 'COBAS E 412', 'ANTI-HCV G2 ELECSYS COBAS', 'ANTI-HCV G2 ELECSYS COBAS', '0', '1 X 6,5 ml , 1 x 18 ml ,                 1 x 18 ml ', '1 SET', '1 SET/1 BOX', '1', '0', '0', '1', '2021-01-31', '0000-00-00', '1');
INSERT INTO `barang` VALUES ('141', 'COBAS E 413', 'ASSAY CUP ELECSYS ', 'ELECSYS ASSAY CUP 2010', '0', '', '6 SET', '6 SET/1DUS', '0', '0', '0', '0', '2024-01-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('142', 'COBAS E 414', 'PROCELL ELECSYS', 'ELECSYS ASSAY PRO CELL', '0', '6 x 380 ml', '6 BOTOL', '6 BOTOL/1 BOX', '3', '0', '0', '3', '2031-04-22', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('143', 'COBAS E 415', 'ASSAY TIP ELECSYS', 'ELECSYS ASSAY TIP 2010', '0', '1 X 120 TIP', '30 SET', '30 SET/1 DUS', '0', '0', '0', '0', '2024-10-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('144', 'COBAS E 416', 'CLEAN CELL ELECSYS', 'ELECSYS CLEAN SOL.CLEAN CELL', '0', '6 x 380 ml', '6 BOTOL', '6 BOTOL/1 BOX', '2', '0', '0', '2', '2022-03-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('145', 'COBAS E 417', 'HBSAG ELECSYS CONFIRMATION KIT', 'ELECSYS HBSAG CONFIRMATION KIT', '0', '2 X 1 ml', '2 SET', '2 SET/1 BOX', '1', '0', '0', '1', '2021-06-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('146', 'COBAS E 418', 'HBSAG ELECSYS GEN 2', 'ELECSYS HBSAG GEN II', '0', '1 X 6,5 ml , 1 x 8 ml ,              1 x 7 ml ', '1 SET', '1 SET/1 BOX', '1', '0', '0', '1', '2021-01-31', '0000-00-00', '1');
INSERT INTO `barang` VALUES ('147', 'COBAS E 419', 'ISE CLEANING SOL', 'ISE CLEANING SOLUTION SYS CLEAN', '0', '5 X 100 ML', '5 BOTOL', '5 BOTOL/1 BOX', '0', '0', '0', '0', '2022-02-28', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('148', 'COBAS E 420', 'PRESICONTROL ANTI HCV ELECSYS', 'PRECICONTROL ANTI HCV ELECSYS', '0', '8 X 1,3 ml', '8 SET', '8 SET/1 BOX', '0', '0', '0', '0', '2022-08-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('149', 'COBAS E 421', 'PRESICONTROL ANTI HBS ELECSYS', 'PRECICONTROL ANTI HBS ELECSYS', '0', '8 X 1,3 ml', '8 SET', '8 SET/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('150', 'COBAS E 422', 'PRECICONTROL HBSAG ELECSYS', 'PRECICONTROL HBSAG GEN.2', '0', '8 X 1,3 ml', '8 SET', '8 SET/1 BOX', '0', '0', '0', '0', '2021-03-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('151', 'COBAS E 423', 'SYSTEM WASH SOLUTION ELECSYS', 'SYSWASH SOLUTION ', '0', '1 X 500 ml', '1 BOTOL', '1 BOTOL', '4', '0', '0', '4', '2021-09-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('152', 'COBAS E 424', 'TROPONIN T PRECICONTROL ELECSYS ', 'TROPONIN PC ELECSYS ', '0', '2 X 2 ml', '2 SET', '2 SET/1 BOX', '1', '0', '0', '1', '2020-11-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('153', 'COBAS E 425', 'TROPONIN T HS STAT CS ELECSYS', 'TROPONIN T HS (STAT) CS ELECSYS', '0', '2 X 1 ml', '2 SET', '2 SET/1 BOX', '1', '0', '0', '1', '2021-04-30', '0000-00-00', '1');
INSERT INTO `barang` VALUES ('154', 'COBAS E 426', 'TROPONIN T HS STAT ELECSYS', 'TROPONIN T HS STAT ELECSYS COBAS E', '0', '1 X 6,5 ml , 1 x 8 ml ,      8 ml ', '1 SET', '1 SET/1 BOX', '1', '0', '0', '1', '2021-03-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('155', 'ENSEVAL MEDIKA PRIMA', 'VIDAS ANTI HCV', 'VIDAS ANTI HCV', '0', '60 X 1 SET', '60 SET', '60 SET/1 BOX', '1', '0', '0', '1', '2021-04-10', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('156', 'ENSEVAL MEDIKA PRIMA', 'VIDAS HBSAG CONFIRMATION', 'VIDAS HBSAG CONFIRMATION', '0', '1 X 0,6 ml , 1 x 0,6 ml , 2 X 6 ml ', '1 SET ', '1 SET/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('157', 'ENSEVAL MEDIKA PRIMA', 'VIDAS HBSAG ULTRA', 'VIDAS HBSAG ULTRA', '0', '60 X 1 SET', '60 SET', '60 SET/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('158', 'REAGEN DONASI (HIBAH)', 'INTEC HIV', 'REAGEN ANTI HIV (INTEC)', '0', 'BUAH', '100 PCS', '100 BUAH/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('159', 'REAGEN DONASI (HIBAH)', 'REAGEN ANTI HIV (FOCUS)', 'REAGEN ANTI HIV (FOCUS)', '0', 'BUAH', '25 PCS', '25 BUAH/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('160', 'REAGEN DONASI (HIBAH)', 'ONCOPROBE ', 'REAGEN ANTI HIV ( ONCO)', '0', 'BUAH', '50 PCS', '50 BUAH/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('161', 'REAGEN DONASI (HIBAH)', 'RAPID HIV 3', 'REAGEN ANTI HIV  (SD HIV1/2 3.0)', '0', 'BUAH', '100 PCS', '100 BUAH/1 BOX', '407', '0', '0', '407', '2021-06-25', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('162', 'REAGEN DONASI (HIBAH)', 'BIOMERIUX/VIKIA', 'REAGEN ANTI HIV  BIO MERIUX (Vikia)', '0', 'BUAH', '25 PCS', '25 BUAH/1 BOX', '10', '0', '0', '10', '2021-10-04', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('163', 'REAGEN DONASI (HIBAH)', 'KHB ', 'REAGEN ANTI HIV ( KHB)', '0', 'BUAH', '100 PCS', '100 BUAH/1 BOX', '31', '0', '0', '31', '2021-05-05', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('164', 'REAGEN DONASI (HIBAH)', 'DIAGNOSTAR', 'REAGEN ANTI HIV (DiagnoStar)', '0', 'BUAH', '2 SET', '2 SET/1 BOX', '15', '0', '0', '15', '2021-07-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('165', 'REAGEN DONASI (HIBAH)', 'REAGEN CD 4', 'REAGEN CD 4', '0', 'BUAH', '20 SET', '20 SET/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('166', 'REAGEN DONASI (HIBAH)', 'REAGEN CONTROL CD4', 'REAGEN CONTROL CD4', '0', 'SET', '100 tes', '100 TEST/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('167', 'REAGEN DONASI (HIBAH)', 'DBS COLLECTION KIT', 'REAGEN DBS COLLECTION KIT', '0', 'SET', '20 pcs', '20 BUAH/1BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('168', 'REAGEN DONASI (HIBAH)', 'REAGEN RPR ANTIGEN (FOCUS)', 'REAGEN RPR ANTIGEN (FOCUS)', '0', 'TEST', '100 pcs', '100 BUAH/1 BOX', '58', '0', '0', '58', '2021-07-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('169', 'REAGEN DONASI (HIBAH)', 'TPHA SYPHILIS', 'REAGEN TPHA SYPHILIS HEXOGEN', '0', 'BUAH', '10 CATRIDGE', '10 CATRIDGE/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('170', 'REAGEN DONASI (HIBAH)', 'REAGEN TPHA SYPHILIS INTEC', 'REAGEN TPHA SYPHILIS SD', '0', 'BUAH', '25 pcs', '25 BUAH/1 BOX', '17', '0', '0', '17', '2022-07-28', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('171', 'REAGEN DONASI (HIBAH)', 'GENEXPERT REAGEN VIRAL LOAD (XPERT HIV VL)', 'Reagen Xpert HIV1-Viral Load', '0', 'CATRIDGE ', '10 pcs', '10 BUAH/1 BOX', '0', '0', '0', '0', '2020-12-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('172', 'IMUNOSEROLOGI LAINNYA', 'DENGUE IgG/IgM SD', 'DENGUE IgG/IgM SD', '0', 'BUAH', '25 pcs', '25 BUAH/1 BOX', '2', '0', '0', '2', '2021-07-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('173', 'IMUNOSEROLOGI LAINNYA', 'LEPTOSPIRA IgM PAKAR BIOMEDIKA', 'LEPTOSPIRA IgM PAKAR BIOMEDIKA', '0', '1 X 5 ml', '10 pcs', '10 BUAH/1 BOX', '1', '0', '0', '1', '2022-02-28', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('174', 'IMUNOSEROLOGI LAINNYA', 'SALMONELLA PARATYPHI AH', 'SALMONELLA TYPHI AH REMEL MUREX', '0', '2 X 5 ml', '1 VIAL', '1 VIAL', '2', '0', '0', '2', '2021-10-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('175', 'IMUNOSEROLOGI LAINNYA', 'SALMONELLA PARATYPHI AO', 'SALMONELLA TYPHI AO REMEL MUREX', '0', '3 X 5 ml', '1 VIAL', '1 VIAL', '3', '0', '0', '3', '2021-08-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('176', 'IMUNOSEROLOGI LAINNYA', 'SALMONELLA PARATYPHI BH', 'SALMONELLA TYPHI BH REMEL MUREX', '0', '4 X 5 ml', '1 VIAL', '1 VIAL', '2', '0', '0', '2', '2021-11-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('177', 'IMUNOSEROLOGI LAINNYA', 'SALMONELLA PARATYPHI BO', 'SALMONELLA TYPHI BO REMEL MUREX', '0', '5 X 5 ml', '1 VIAL', '1 VIAL', '2', '0', '0', '2', '2021-08-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('178', 'IMUNOSEROLOGI LAINNYA', 'SALMONELLA PARATYPHI CH', 'SALMONELLA TYPHI CH REMEL MUREX', '0', '6 X 5 ml', '1 VIAL', '1 VIAL', '2', '0', '0', '2', '2021-07-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('179', 'IMUNOSEROLOGI LAINNYA', 'SALMONELLA PARATYPHI CO', 'SALMONELLA TYPHI CO REMEL MUREX', '0', '7 X 5 ml', '1 VIAL', '1 VIAL', '2', '0', '0', '2', '2022-05-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('180', 'IMUNOSEROLOGI LAINNYA', 'SALMONELLA TYPHI H', 'SALMONELLA TYPHI H REMEL MUREX', '0', '8 X 5 ml', '1 VIAL', '1 VIAL', '2', '0', '0', '2', '2021-11-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('181', 'IMUNOSEROLOGI LAINNYA', 'SALMONELLA TYPHI O', 'SALMONELLA TYPHI O REMEL MUREX', '0', '9 X 5 ml', '1 VIAL', '1 VIAL', '2', '0', '0', '2', '2021-11-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('182', 'IMUNOSEROLOGI LAINNYA', 'TUBEX TF', 'TUBEX TF', '0', 'BIRU 3,5 ml x 1 , COKLAT 1,7 ml x 1 KONTROL NEGATIF 0,4 ml x 1 KONTROL POSITIF 0,4 ml x 1', '1 SET/1 BOX', '1 SET/1 BOX', '1', '0', '0', '1', '2021-10-10', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('183', 'IMUNOSEROLOGI LAINNYA', 'PANBIO COVID-19 IGG/IGM TEST', 'Rapid IgG IgM Covid ', '0', 'BUAH', '10 pcs', '10 BUAH/1 BOX', '350', '0', '0', '350', '2021-05-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('184', 'IMUNOSEROLOGI LAINNYA', 'ANTIGEN COVID-19 TEST', 'Rapid Antigen Covid ', '0', 'KIT', '25 kit', '25 Kit /1 BOX', '500', '0', '0', '500', '2022-11-01', '0000-00-00', '500');
INSERT INTO `barang` VALUES ('185', 'COBAS C 311', 'ACID WASH SOL', 'ACID WASH SOLUTION 2 X2', '0', '500 TEST', '1 KASET', '', '0', '0', '0', '0', '2021-02-25', '0000-00-00', '1 BOX');
INSERT INTO `barang` VALUES ('186', 'COBAS C 312', 'ALBUMIN GEN 2', 'ALB GEN.2 INTEGRA', '0', '350 TEST ', '1 KASET', '', '1', '0', '0', '1', '2021-01-31', '0000-00-00', '2');
INSERT INTO `barang` VALUES ('187', 'COBAS C 313', 'ALTL INTEGRA', 'ALTL INTEGRA', '0', '250 TEST ', '1 KASET', '', '1', '0', '0', '1', '2021-03-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('188', 'COBAS C 314', 'ASTL INTEGRA', 'ASTL INTEGRA', '0', '300 TEST ', '1 KASET', '', '3', '0', '0', '3', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('189', 'COBAS C 315', 'BILIRUBIN TOTAL (BIL T)', 'BIL D GEN .2 350 TEST INTEGRA', '0', '12 x 3 ml', '1 BOX', '12 BOTOL/1 BOX', '3', '0', '0', '3', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('190', 'COBAS C 316', 'BILIRUBIN DIRECT (BIL D)', 'BIL-T GEN.3 250 TEST INTEGRA', '0', '3 X 1 ml', '1 BOX', '3 BOTOL/1 BOX', '4', '0', '0', '4', '2021-03-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('191', 'COBAS C 317', 'CA GEN 2', 'CA GEN 2 300T INTEGRA', '0', '3 X 1 ml', '1 BOX', '3 BOTOL/1 BOX', '1', '0', '0', '1', '2021-06-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('192', 'COBAS C 318', 'CFAS', 'CFAS (CALIBRATOR FOR AUTOMATED SYSTEM)', '0', '5 x 1 ml', '1 BOX', '5 Botol/ 1 BOX', '1', '0', '0', '1', '2021-04-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('193', 'COBAS C 319', 'CFAS CKMB 3 X 1 ML', 'CFAS CK.MB 3 X 1 ML', '0', '400 TEST', '1 KASET', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('194', 'COBAS C 320', 'CFAS LIPID', 'CFAS LIPIDS 3 X 1 ML', '0', '100 TEST', '1 KASET', '', '0', '0', '0', '0', '2020-12-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('195', 'COBAS C 321', 'CFAS PROTEINS 5 x 1 ml', 'CFAS PROTEINS', '0', '250 TEST', '1 KASET', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('196', 'COBAS C 322', 'CHOL 2 ', 'CHOL2 INTEGRA', '0', '', '1 KASET', '', '1', '0', '0', '1', '2021-01-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('197', 'COBAS C 323', 'CK-MB STAT', 'CK-MB 100T INTEGRA ', '0', '60 ml', '1 KASET', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('198', 'COBAS C 324', 'CREP GEN 2', 'CREP2 250 TEST INTEGRA', '0', '800 TEST', '1 KASET', '', '6', '0', '0', '6', '2021-03-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('199', 'COBAS C 325', 'CRP GEN 3', 'CRP', '0', 'BUAH', '1 BUAH', '', '2', '0', '0', '2', '2021-08-31', '0000-00-00', '2');
INSERT INTO `barang` VALUES ('200', 'COBAS C 326', 'ECOTERGENT', 'ECODETERGENT COBAS C311', '0', '350 TEST ', '1 KASET', '', '3', '0', '0', '3', '2021-09-30', '0000-00-00', '1');
INSERT INTO `barang` VALUES ('201', 'COBAS C 327', 'GLUC HK GEN 3', 'GLUC HK GEN 3 800 TEST  COBAS C INT', '0', '200 TEST', '1 KASET', '', '2', '0', '0', '2', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('202', 'COBAS C 328', 'COBAS C311 HALOGEN LAMP', 'HALOGEN LAMP', '0', '1 X 75 ml ', '1 KASET', '', '4', '0', '0', '4', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('203', 'COBAS C 329', 'HDL-C', 'HDL C Gen 4 350 Test INTEGRA', '0', ' 200 TEST ', '1 KASET', '', '1', '0', '0', '1', '2021-06-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('204', 'COBAS C 330', 'IRON GEN 2', 'IRON (A) GEN.2 200 TEST INTEGRA', '0', '50 ml', '1 KASET', '', '0', '0', '0', '0', '2021-05-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('205', 'COBAS C 331', 'IRON STANDARD', 'IRON STANDARD (A)', '0', '2 x 1,8 liter', '1 BOX', '2 BUAH/1 BOX', '1', '0', '0', '1', '2021-09-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('206', 'COBAS C 332', 'LDL-C', 'LDL C GEN 3 200 TEST INTEGRA', '0', '12 X 59 ml ', '1 BOX', '12 BUAH/1 BOX KECIL', '3', '0', '0', '3', '0000-00-00', '0000-00-00', '1 (ED BUKAN FEB )');
INSERT INTO `barang` VALUES ('207', 'COBAS C 333', 'NACL 9% GEN2 COBAS', 'NACL 9% DIL COBAS C', '0', '66 ml', '1 KASET', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '2 BOX');
INSERT INTO `barang` VALUES ('208', 'COBAS C 334', 'NAOH-D BASIC WASH 2 x 1,8 L', 'NAOH-D BASIC WASH 2 x 1,8 L', '0', '20 x 5 ml', '1 BOX', '20 BOTOL/1 BOX', '1', '0', '0', '1', '2022-08-20', '0000-00-00', '1 BOX');
INSERT INTO `barang` VALUES ('209', 'COBAS C 335', 'NAOH-D BASIC WASH 70 ML', 'NAOH-D BASIC WASH 70 ML', '0', '20 x 5 ml', '1 BOX', '20 BOTOL/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '1');
INSERT INTO `barang` VALUES ('210', 'COBAS C 336', 'NAOH-D COBAS C', 'NAOH-D COBAS C', '0', '(3 X 6) 18 BUAH', '1 BOX', '3 PACK/1 BOX', '5', '0', '0', '5', '2022-04-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('211', 'COBAS C 337', 'PRECICNTRL CLINC MLTI 1 QCS', 'PRECICNTRL CLINC MLTI 1 QCS', '0', '12 X 59 ml ', '1 BOX', '12 BUAH/1 BOX KECIL', '0', '0', '0', '0', '2020-04-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('212', 'COBAS C 338', 'PRECICNTRL CLINC MLTI 2 QCS', 'PRECICNTRL CLINC MLTI 2 QCS', '0', '2750 TEST', '1 KASET', '', '0', '0', '0', '0', '2020-12-31', '0000-00-00', '1 SET');
INSERT INTO `barang` VALUES ('213', 'COBAS C 339', 'REACTION CUVETTE FOR CHEMILUMINESCENCE', 'REACTION CELL SET CUVET FOR 311', '0', '50 ml', '1 KASET', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('214', 'COBAS C 340', 'SAMPLE CLEANER', 'SAMPLE CLEANER', '0', '300 TEST ', '1 KASET', '', '1', '0', '0', '1', '2021-09-30', '0000-00-00', '1');
INSERT INTO `barang` VALUES ('215', 'COBAS C 341', 'SERUM INDEX GEN 2', 'SERUM INDEX GEN 2', '0', '250 TEST', '1 KASET', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('216', 'COBAS C 342', 'SMS', 'SMS COBAS C ', '0', '400 TEST', '1 KASET', '', '4', '0', '0', '4', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('217', 'COBAS C 343', 'TP GEN 2', 'TOTAL PROTEIN GEN 2', '0', '100 TEST', '1 KASET', '', '1', '0', '0', '1', '0000-00-00', '0000-00-00', '1 (ED BUKAN FEB )');
INSERT INTO `barang` VALUES ('218', 'COBAS C 344', 'TRIGLYCERIDE', 'TRIGL INTEGRA ', '0', '500 TEST', '1 KASET', '', '1', '0', '0', '1', '2021-02-28', '0000-00-00', '1 (ED BUKAN FEB)');
INSERT INTO `barang` VALUES ('219', 'COBAS C 345', 'URIC ACID (UA) / UA2', 'UA2 COBAS INTEGRA', '0', '20 X 250 BUAH', '5000 BUAH', '20 PACK/1 DUS', '0', '0', '0', '0', '2021-02-28', '0000-00-00', '1');
INSERT INTO `barang` VALUES ('220', 'COBAS C 346', 'UIBC', 'UIBC INTEG (A)', '0', '40 TEST', '1 BOX', '', '0', '0', '0', '0', '2022-08-31', '0000-00-00', '1');
INSERT INTO `barang` VALUES ('221', 'COBAS C 347', 'UREAL', 'UREAL 500TEST COBAS C INT', '0', '60 TEST', '1 BOX', '', '0', '0', '0', '0', '2021-01-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('222', 'COBAS C 348', 'CUVET COBAS C311', 'SAMPLE CUPS (5000 PCS)', '0', '60 TEST', '1 BOX', '', '35000', '0', '0', '35000', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('223', 'DIMENSION EXL', 'AHDL', 'AHDL', '0', '5 ml', '1 VIAL', '12 VIAL/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('224', 'DIMENSION EXL', 'ALT1', 'ALT1', '0', '5 ml', '1 VIAL', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('225', 'DIMENSION EXL', 'AST ', 'AST ', '0', '5 ml', '1 VIAL', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('226', 'DIMENSION EXL', 'BIORAD LYPOCHECK CLINCHEM LEV 1 ', 'BIORAD LYPOCHECK CLINCHEM LEV 1 ', '0', '60 TEST', '1 BOX', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('227', 'DIMENSION EXL', 'BIORAD LYPOCHECK CLINCHEM LEV 2', 'BIORAD LYPOCHECK CLINCHEM LEV 2', '0', '60 TEST', '1 BOX', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('228', 'DIMENSION EXL', 'LIQ. SPINAL FLUID LV.1 ', 'BIORAD SPINAL FLUID LEV 1 ', '0', '60 TEST', '1 BOX', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('229', 'DIMENSION EXL', 'BUN ', 'BUN ', '0', '60 TEST', '1 BOX', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('230', 'DIMENSION EXL', 'DIMENSION CHK FLEX', 'CHK ', '0', '1000 BUAH', 'PACK', '', '0', '0', '0', '0', '2021-06-29', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('231', 'DIMENSION EXL', 'CHOL    ', 'CHOL    ', '0', '12.000 TEST', '1 FILM', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('232', 'DIMENSION EXL', 'CREA2', 'CREA2', '0', '60 TEST', '1 BOX', '', '0', '0', '0', '0', '2021-05-12', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('233', 'DIMENSION EXL', 'Cup Sample ', 'Cup Sample ', '0', '60 TEST', '1 BOX', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('234', 'DIMENSION EXL', 'CUVETTE CATRIDGE', 'Cuvette Catridge ', '0', '40 TEST', '1 BOX', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('235', 'DIMENSION EXL', 'DBI', 'DBI', '0', '', '1 BUAH', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('236', 'DIMENSION EXL', 'Glucosa', 'Glucosa', '0', '', '1 BUAH', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('237', 'DIMENSION EXL', 'LDL  ', 'LDL  ', '0', '', '1 BUAH', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('238', 'DIMENSION EXL', 'R1&R2 Probe Tip', 'R1&R2 Probe Tip', '0', '60 TEST', '1 BOX', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('239', 'DIMENSION EXL', 'Sample Probe Tip', 'Sample Probe Tip', '0', '60 TEST', '1 BOX', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('240', 'DIMENSION EXL', 'SOURCE LAMP', 'Source Lamp', '0', '61 TEST', '1 BOX', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('241', 'DIMENSION EXL', 'TBI', 'TBI', '0', '60 TEST', '1 BOX', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('242', 'DIMENSION EXL', 'TGL', 'TGL', '0', '1 ml', '1 VIAL', '6 VIAL/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('243', 'DIMENSION EXL', 'UCFC', 'UCFP', '0', '1 ml', '1 VIAL', '6 VIAL/1 BOX', '0', '0', '0', '0', '2021-06-08', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('244', 'DIMENSION EXL', 'URCA', 'URCA', '0', '1 ml', '1 VIAL', '6 VIAL/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('245', 'KALIBRATOR', 'AHDL Cal', 'AHDL Cal', '0', '1 ml', '1 VIAL', '6 VIAL/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('246', 'KALIBRATOR', 'ALDL Cal', 'ALDL Cal', '0', '1 ml', '1 VIAL', '6 VIAL/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('247', 'KALIBRATOR', 'CHEM I', 'CHEM I', '0', '1 ml', '1 VIAL', '6 VIAL/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('248', 'KALIBRATOR', 'CHEM II', 'CHEM II', '0', '1 ml', '1 VIAL', '6 VIAL/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('249', 'KALIBRATOR', 'Chol Cal', 'Chol Cal', '0', '1 ml', '1 VIAL', '6 VIAL/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('250', 'KALIBRATOR', 'Enzyme II Cal', 'Enzyme II Cal', '0', '1 ml', '1 VIAL', '6 VIAL/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('251', 'KALIBRATOR', 'Enzyme Verifier', 'Enzyme Verifier', '0', '10 x 2 ml , 10 x 50 mg', '10 SET', '10 SET/1 PACK', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('252', 'KALIBRATOR', 'TBI/DBI Cal', 'TBI/DBI Cal', '0', '4 x 90 ml , 4 x 370 ml ', '4 BOTOL', '4 BOTOL/1 DUS', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('253', 'KALIBRATOR', 'UCFC CALIBRATOR', 'UCFC Cal', '0', '2 x 1 SET', '1 SET', '2 SET/1 DUS', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('254', 'RAPID LAB 348 EX', '105610-DEPROT PACK', '105610-DEPROT PACK', '0', '30 X 2,5 ml', '30 VIAL', '30 VIAL/1 BOX KECIL', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('255', 'RAPID LAB 348 EX', 'BUFFER PACK M 248', 'BUFFER PACK', '0', '4 X 450 ml ', '4 BOTOL', '4 BOTOL/1 DUS', '2', '0', '0', '2', '2021-08-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('256', 'RAPID LAB 348 EX', 'GAS CARTRIDGE', 'GAS CARTRIDGE PACK', '0', '2 x 10 ml', '1 SET', '1 SET/1 BOX', '1', '0', '0', '1', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('257', 'RAPID LAB 348 EX', 'RAPID QC COMPLETE LEVEL 2', 'RAPID QC COMPLETE LEVEL 2', '0', '1 X 90 ml , 6 x 0,5 gr ', 'BOX', '6 BOTOL KECIL/1 BOX', '1', '0', '0', '1', '2021-03-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('258', 'RAPID LAB 348 EX', 'WASH AND CD PACK', 'WASH AND CD PACK', '0', '1 X 800 ml', '1 PACK', '800 ml/1 PACK', '0', '0', '0', '0', '2020-06-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('259', 'EASYLITE NaK PLUS ', 'Bi Level Control Solution', 'Bi Level Control Solution', '0', 'ROLL X 1 ml', 'ROLL', '1 ROLL', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('260', 'EASYLITE NaK PLUS ', 'Daily Cleaning Solution', 'Daily Cleaning Solution', '0', '45 TEST', '1 BOX', '45 TEST/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', 'ORDER 1 PAKET');
INSERT INTO `barang` VALUES ('261', 'EASYLITE NaK PLUS ', 'SOLUTION PACK, NA/K/CL/CA/LI, 800 ML', 'EASYLITE Reagen', '0', '', '1 BOTOL', '4 BOTOL/1 BOX', '2', '0', '0', '2', '2022-04-14', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('262', 'EASYLITE NaK PLUS ', 'Printer Paper EL', 'Printer Paper EL', '0', '', '1 BUAH', '4 BUAH/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('263', 'CLINITEC NOVUS ', 'CLINITEX NOVUS 12 CASSETTE 450', 'CLINITEX NOVUS 12 CASSETTE 450', '0', '12X12 ml', '1 BOTOL', '12 BOTOL/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('264', 'CLINITEC NOVUS ', 'CLINITEX NOVUS CALIBRATOR', 'CLINITEX NOVUS CALIBRATOR', '0', '100 TEST', '1 BOX', '100 TEST/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('265', 'CLINITEC NOVUS ', 'CLINITEX NOVUS RINSE ADDITIVE', 'CLINITEX NOVUS RINSE ADDITIVE', '0', '25 TEST', '1 BOX', '25 TEST/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('266', 'CLINITEC NOVUS ', 'LIQUICHEK URINALYSIS CONTROL', 'LIQUICHEK URINALYSIS CONTROL,BILEVEL 12X12 ML', '0', '25 TEST', '1 BOX', '25 TEST/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('267', 'CLINITEC NOVUS ', 'SEDI URISTAIN AIM', 'SEDI URISTAIN AIM', '0', '25 TEST', '1 BOX', '25 TEST/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('268', 'KLINIK RUTIN LAINNYA', 'ABON BZO (BENZODIAZEPIN) DEVICE', 'ABON BZO(BENZODIAZEPIN)', '0', '100 TEST', '1 TUBE', '100 TEST/1 TEST', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('269', 'KLINIK RUTIN LAINNYA', 'ABON COC(COCAIN)', 'ABON COC(COCAIN)', '0', '100 TEST', '1 TUBE', '100 TEST/1 TEST', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('270', 'KLINIK RUTIN LAINNYA', 'DRUGTEST 6 PARAMETER 25 TEST DIMA', 'ABON MULTI DRUG,ONE STEP MULTI LINE 6 DRUG SCREEN TEST DEVICE', '0', '100 TEST', '1 TUBE', '100 TEST/1 TEST', '8', '0', '0', '8', '2022-03-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('271', 'KLINIK RUTIN LAINNYA', 'COMBUR TEST 10 M 100', 'COMBUR 10 TEST M 100', '0', '25 TEST', '1 BOX', '25 TEST/1 BOX', '0', '0', '0', '0', '2021-04-30', '0000-00-00', '2');
INSERT INTO `barang` VALUES ('272', 'KLINIK RUTIN LAINNYA', 'CONTROL TEST M', 'CONTROL TEST M 50', '0', '500 ml', '1 BOTOL', '500 ml/1 BOTOL', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('273', 'KLINIK RUTIN LAINNYA', 'GLUCO+PROTEIN T+PH URINE TEST', 'GLUCO+PROTEIN T+PH URINE TEST', '0', '', '1 BOTOL', '', '2', '0', '0', '2', '2021-04-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('274', 'KLINIK RUTIN LAINNYA', 'HCG CASSETE INST. ANSWER', 'HCG DEVICE 25 TEST ANSWER', '0', '25 TEST', '1 BOX', '25 TEST/1 BOX', '16', '0', '0', '16', '2022-09-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('275', 'KLINIK RUTIN LAINNYA', 'IODIUM 1% 500 ML PL', 'IODIUM 1% 500 ML PL', '0', '25 TEST', '1 BOX', '25 TEST/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('276', 'KLINIK RUTIN LAINNYA', 'LARUTAN EOSIN 2 %', 'LARUTAN EOSIN 2 %', '0', '25 TEST', '1 BOX', '25 TEST/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('277', 'KLINIK RUTIN LAINNYA', 'NARKOBA AMP-C', 'NARKOBA AMP-C', '0', '25 TEST', '1 BOX', '25 TEST/1 BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('278', 'KLINIK RUTIN LAINNYA', 'NARKOBA M-AMP-C', 'NARKOBA M-AMP-C', '0', '10 CATRIDGE/BOX', '1 BOX', '5 BOX KECIL/1 DUS', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('279', 'KLINIK RUTIN LAINNYA', 'NARKOBA MOR-C', 'NARKOBA MOR-C', '0', '250 ml', '1 BOTOL', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('280', 'KLINIK RUTIN LAINNYA', 'NARKOBA THC-C', 'NARKOBA THC-C', '0', '100 ml', '1 BOTOL', '', '0', '0', '10', '-10', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('281', 'GeneXpert Cepheid', 'CATRIEDGE GENEXPERT', 'CATRIEDGE GENEXPERT TB', '0', '100 ml', '1 BOTOL', '', '164', '0', '0', '164', '2021-10-03', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('282', 'Vitek 2 Compact', 'GP TET VTK2 20 CARDS', 'VITEX 2 GP', '0', '65 ml', '1 BOTOL', '', '50', '0', '0', '50', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('283', 'Vitek 2 Compact', 'GN TET VTK2 20 CARDS', 'VITEX 2 GN', '0', 'BUAH', '1 BUAH', '100 BUAH/1 PACK', '36', '0', '0', '36', '2021-03-17', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('284', 'Vitek 2 Compact', 'VITEX 2 AST - GN 93', 'VITEX 2 AST - GN 93', '0', 'BUAH', '1 BUAH', '100 BUAH/1 PACK', '25', '0', '0', '25', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('285', 'Vitek 2 Compact', 'INDIKATOR PITA STERIL 3M 1322', 'BIOLOGICAL INDIKATOR', '0', 'BUAH', 'BUAH', '', '24', '0', '0', '24', '2021-12-29', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('286', 'Vitek 2 Compact', 'HYDROGEN PEROXIDE / H2O2 50% TEKNIS ', 'H2O2 50%', '0', 'BUAH', 'BUAH', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('287', 'Vitek 2 Compact', 'NaOCl ', 'NaOCl ', '0', 'BUAH', 'BUAH', '20 BUAH/BOX', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('288', 'Vitek 2 Compact', 'Vitex 2 AST-GP 67', 'Vitex 2 AST-GP 67', '0', 'BUAH', 'BUAH', '20 BUAH/BOX', '36', '0', '0', '36', '2021-07-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('289', 'BacT/ALERT 3D 60', 'BACTALERT FA PLUS', 'Bact Alert FA Plus (HIJAU)', '0', 'BUAH', 'BUAH', '20 BUAH/BOX', '8', '0', '0', '8', '2021-07-14', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('290', 'BacT/ALERT 3D 61', 'BACTALERT PF PLUS', 'Bact Alert PF Plus (Kuning)', '0', 'BUAH', 'BUAH', '25 BUAH/BOX', '64', '0', '0', '64', '2020-12-04', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('291', 'BacT/ALERT 3D 62', 'BACT ALERT ADAPTER CAP', 'Bact Alert Adapter Inser', '0', '800 ml', 'BOTOL', '800 ml/BOTOL', '90', '0', '0', '90', '2024-01-21', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('292', 'BacT/ALERT 3D 63', 'BACT ALERT ADAPTER INSERT', 'Bact Alert Adapter Cap', '0', '1 liter', 'BOTOL', '1 liter/BOTOL', '40', '0', '0', '40', '2024-01-11', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('293', 'MIKROBIOLOGI', 'Object Glass', 'Object Glass', '0', 'BUAH', 'BUAH', '20 BUAH/BOX', '4', '0', '0', '4', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('294', 'MIKROBIOLOGI', 'TRANSPORSWAB Cotton', 'TRANSPORSWAB Cotton', '0', 'BUAH', 'BUAH', '', '67', '0', '0', '67', '2023-09-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('295', 'MIKROBIOLOGI', 'TRANSPORSWAB NESCO', 'TRANSPORSWAB NESCO', '0', 'BUAH', 'BUAH', '', '84', '0', '0', '84', '2021-10-29', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('296', 'MIKROBIOLOGI', 'GRAM STAIN BD', 'GRAM STAIN BD', '0', 'BUAH', 'BUAH', '', '0', '0', '0', '0', '2021-10-31', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('297', 'MIKROBIOLOGI', 'KOH 20 %', 'KOH 20 %', '0', 'BUAH', 'BUAH', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('298', 'MIKROBIOLOGI', 'PEWARNA ALBERT 100 ML', 'LARUTAN ALBERT 100 ML', '0', 'BUAH', 'BUAH', '', '0', '0', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('299', 'MIKROBIOLOGI', 'REAGEN ZIEHL NIELSEN', 'REAGEN ZIEHL NIELSEN', '0', 'BUAH', 'BUAH', '', '7', '0', '0', '7', '2020-07-01', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('300', 'MIKROBIOLOGI', 'TSB', 'TSB', '0', 'BUAH', 'BUAH', '', '3', '0', '0', '3', '2020-11-16', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('301', 'MIKROBIOLOGI', 'Air Life 0,45% Sodium Chloride', 'Air Life 0,45% Sodium Chloride', '0', 'BUAH', 'BUAH', '', '10', '0', '0', '10', '2021-06-03', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('302', 'MIKROBIOLOGI', 'INOCOLATING LOOP DISPOSABEL STERIL', 'Inoculation Loop Steril', '0', 'BUAH', 'BUAH', '', '11', '0', '0', '11', '2022-11-30', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('303', 'MIKROBIOLOGI', 'BLOOD AGAR BASE', 'BLOOD AGAR BASE', '0', 'BUAH', 'BUAH', '', '45', '0', '0', '45', '2020-11-26', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('304', 'MIKROBIOLOGI', 'MAC CONKEY AGAR', 'MAC CONKEY AGAR', '0', 'BUAH', 'BUAH', '', '12', '0', '0', '12', '2020-11-26', '0000-00-00', '0');
INSERT INTO `barang` VALUES ('320', 'SYSMEX XN 1000', 'Test1', 'TEST1', '25000', '1000 ml', '1 BOTOL', 'dus', '310', '0', '0', '310', '2021-04-30', '2021-05-01', '0');

-- ----------------------------
-- Table structure for `barang_asli`
-- ----------------------------
DROP TABLE IF EXISTS `barang_asli`;
CREATE TABLE `barang_asli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `jenis` text NOT NULL,
  `suplier` text NOT NULL,
  `modal` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of barang_asli
-- ----------------------------

-- ----------------------------
-- Table structure for `barang_keluar`
-- ----------------------------
DROP TABLE IF EXISTS `barang_keluar`;
CREATE TABLE `barang_keluar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `keluar` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of barang_keluar
-- ----------------------------
INSERT INTO `barang_keluar` VALUES ('1', '2021-04-06', 'NARKOBA THC-C', '10');

-- ----------------------------
-- Table structure for `barang_laku`
-- ----------------------------
DROP TABLE IF EXISTS `barang_laku`;
CREATE TABLE `barang_laku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `laba` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of barang_laku
-- ----------------------------

-- ----------------------------
-- Table structure for `barang_laku_asli`
-- ----------------------------
DROP TABLE IF EXISTS `barang_laku_asli`;
CREATE TABLE `barang_laku_asli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `laba` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of barang_laku_asli
-- ----------------------------

-- ----------------------------
-- Table structure for `barang_masuk`
-- ----------------------------
DROP TABLE IF EXISTS `barang_masuk`;
CREATE TABLE `barang_masuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `masuk` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of barang_masuk
-- ----------------------------
INSERT INTO `barang_masuk` VALUES ('2', '2021-04-05', 'ALKOHOL SWAB', '15');

-- ----------------------------
-- Table structure for `barang_masuk_keluar`
-- ----------------------------
DROP TABLE IF EXISTS `barang_masuk_keluar`;
CREATE TABLE `barang_masuk_keluar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of barang_masuk_keluar
-- ----------------------------

-- ----------------------------
-- Table structure for `jenis_barang`
-- ----------------------------
DROP TABLE IF EXISTS `jenis_barang`;
CREATE TABLE `jenis_barang` (
  `id_jenis` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_barang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_jenis`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of jenis_barang
-- ----------------------------

-- ----------------------------
-- Table structure for `pengeluaran`
-- ----------------------------
DROP TABLE IF EXISTS `pengeluaran`;
CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `keperluan` text NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pengeluaran
-- ----------------------------
