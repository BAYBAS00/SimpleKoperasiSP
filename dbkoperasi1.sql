/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `anggota`;
CREATE TABLE `anggota` (
  `id_anggota` int NOT NULL AUTO_INCREMENT,
  `kode_anggota` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text,
  `telepon` varchar(20) DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL,
  PRIMARY KEY (`id_anggota`),
  UNIQUE KEY `kode_anggota` (`kode_anggota`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `angsuran`;
CREATE TABLE `angsuran` (
  `id_angsuran` int NOT NULL AUTO_INCREMENT,
  `kode_angsuran` varchar(10) DEFAULT NULL,
  `kode_pinjaman` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_angsuran` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id_angsuran`),
  UNIQUE KEY `kode_angsuran` (`kode_angsuran`),
  KEY `kode_pinjaman` (`kode_pinjaman`),
  CONSTRAINT `angsuran_ibfk_1` FOREIGN KEY (`kode_pinjaman`) REFERENCES `pinjaman` (`kode_pinjaman`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `pinjaman`;
CREATE TABLE `pinjaman` (
  `id_pinjaman` int NOT NULL AUTO_INCREMENT,
  `kode_pinjaman` varchar(10) NOT NULL,
  `kode_anggota` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(15,2) NOT NULL,
  `tenor` int NOT NULL,
  `bunga` decimal(5,2) NOT NULL,
  `cicilan` decimal(15,2) NOT NULL,
  `status_lunas` enum('Belum Lunas','Lunas') DEFAULT 'Belum Lunas',
  PRIMARY KEY (`id_pinjaman`),
  UNIQUE KEY `kode_pinjaman` (`kode_pinjaman`),
  KEY `kode_anggota` (`kode_anggota`),
  CONSTRAINT `pinjaman_ibfk_1` FOREIGN KEY (`kode_anggota`) REFERENCES `anggota` (`kode_anggota`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `simpanan_detail`;
CREATE TABLE `simpanan_detail` (
  `id_detail` int NOT NULL AUTO_INCREMENT,
  `id_simpanan` int NOT NULL,
  `jumlah` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id_detail`),
  KEY `id_simpanan` (`id_simpanan`),
  CONSTRAINT `simpanan_detail_ibfk_1` FOREIGN KEY (`id_simpanan`) REFERENCES `simpanan_master` (`id_simpanan`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `simpanan_master`;
CREATE TABLE `simpanan_master` (
  `id_simpanan` int NOT NULL AUTO_INCREMENT,
  `kode_simpanan` varchar(10) NOT NULL,
  `kode_anggota` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `total` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`id_simpanan`),
  UNIQUE KEY `kode_simpanan` (`kode_simpanan`),
  KEY `kode_anggota` (`kode_anggota`),
  CONSTRAINT `simpanan_master_ibfk_1` FOREIGN KEY (`kode_anggota`) REFERENCES `anggota` (`kode_anggota`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `anggota` (`id_anggota`, `kode_anggota`, `nama`, `alamat`, `telepon`, `tanggal_daftar`) VALUES
(1, 'AGT001', 'Babay', 'saga', '298347', '2025-06-20'),
(2, 'AGT002', 'Kaja', 'asd', '1234435', '2025-06-21'),
(3, 'AGT003', 'alice', 'weruhi', '1232359', '2025-06-21'),
(4, 'AGT004', 'Akai', 'Jakpus', '2039400234', '2025-06-26'),
(18, 'AGT006', 'Coba', 'kdsnfl', '19284', '2025-06-21'),
(19, 'AGT007', 'lai', 'jksdnf', '92384', '2025-06-21'),
(20, 'AGT008', 'lalal', 'befjb', '98147', '2025-06-21'),
(22, 'AGT009', 'Sung', 'wenn', '902347', '2025-06-21');
INSERT INTO `angsuran` (`id_angsuran`, `kode_angsuran`, `kode_pinjaman`, `tanggal`, `jumlah_angsuran`) VALUES
(1, 'AGS001', 'PNJ001', '2025-06-21', '2200.00'),
(2, 'AGS002', 'PNJ001', '2025-06-21', '2200.00'),
(3, 'AGS003', 'PNJ001', '2025-06-21', '2200.00'),
(4, 'AGS004', 'PNJ001', '2025-06-18', '2200.00'),
(5, 'AGS005', 'PNJ002', '2025-06-26', '5500.00'),
(6, 'AGS006', 'PNJ002', '2025-06-21', '5500.00'),
(7, 'AGS007', 'PNJ001', '2025-06-21', '2200.00'),
(8, 'AGS008', 'PNJ003', '2025-06-21', '11000.00'),
(9, 'AGS009', 'PNJ002', '2025-06-21', '5500.00'),
(10, 'AGS010', 'PNJ002', '2025-06-27', '5500.00'),
(11, 'AGS011', 'PNJ003', '2025-06-21', '11000.00'),
(12, 'AGS012', 'PNJ003', '2025-06-21', '11000.00'),
(13, 'AGS013', 'PNJ002', '2025-06-21', '5500.00'),
(14, 'AGS014', 'PNJ002', '2025-06-21', '5500.00'),
(15, 'AGS015', 'PNJ003', '2025-06-21', '11000.00');
INSERT INTO `pinjaman` (`id_pinjaman`, `kode_pinjaman`, `kode_anggota`, `tanggal`, `jumlah`, `tenor`, `bunga`, `cicilan`, `status_lunas`) VALUES
(1, 'PNJ001', 'AGT002', '2025-06-20', '10000.00', 5, '10.00', '2200.00', 'Lunas'),
(2, 'PNJ002', 'AGT001', '2025-06-11', '50000.00', 10, '10.00', '5500.00', 'Belum Lunas'),
(4, 'PNJ003', 'AGT009', '2025-06-21', '60000.00', 6, '10.00', '11000.00', 'Belum Lunas');
INSERT INTO `simpanan_detail` (`id_detail`, `id_simpanan`, `jumlah`) VALUES
(7, 7, '500000.00'),
(10, 2, '20000.00'),
(13, 8, '30000.00'),
(14, 8, '10000.00'),
(15, 8, '20000.00'),
(16, 3, '10000.00'),
(17, 1, '20000.00'),
(19, 9, '80000.00');
INSERT INTO `simpanan_master` (`id_simpanan`, `kode_simpanan`, `kode_anggota`, `tanggal`, `total`) VALUES
(1, 'SMP001', 'AGT001', '2025-06-21', '20000.00'),
(2, 'SMP002', 'AGT001', '2025-06-19', '20000.00'),
(3, 'SMP003', 'AGT001', '2025-06-21', '10000.00'),
(7, 'SMP007', 'AGT001', '2025-06-21', '500000.00'),
(8, 'SMP008', 'AGT003', '2025-06-21', '60000.00'),
(9, 'SMP009', 'AGT009', '2025-06-21', '80000.00');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;