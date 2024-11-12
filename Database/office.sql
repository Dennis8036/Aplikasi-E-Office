/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : office

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 12/11/2024 20:06:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_absensi
-- ----------------------------
DROP TABLE IF EXISTS `tb_absensi`;
CREATE TABLE `tb_absensi`  (
  `id_absensi` int(11) NOT NULL AUTO_INCREMENT,
  `id_pengawai` int(11) NULL DEFAULT NULL,
  `tanggal` datetime(0) NULL DEFAULT NULL,
  `status_kehadiran` enum('Hadir','Izin','Sakit','Alpa') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_absensi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_absensi_siswa
-- ----------------------------
DROP TABLE IF EXISTS `tb_absensi_siswa`;
CREATE TABLE `tb_absensi_siswa`  (
  `id_absensi_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal` datetime(0) NULL DEFAULT NULL,
  `status_kehadiran_siswa` enum('Hadir','Izin','Sakit','Alpa') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_absensi_siswa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity`;
CREATE TABLE `tb_activity`  (
  `id_activity` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NULL DEFAULT NULL,
  `activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `timestamp` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_activity`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1113 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_activity
-- ----------------------------
INSERT INTO `tb_activity` VALUES (978, 1, 'User melakukan Penghapusan seluruh data activity', '2024-11-12 05:21:09');
INSERT INTO `tb_activity` VALUES (979, 1, 'User membuka Log Activity', '2024-11-12 05:21:09');
INSERT INTO `tb_activity` VALUES (980, 1, 'User membuka Dashboard', '2024-11-12 05:21:10');
INSERT INTO `tb_activity` VALUES (981, 1, 'User membuka halaman dokumen', '2024-11-12 05:55:52');
INSERT INTO `tb_activity` VALUES (982, 1, 'User membuka Log Activity', '2024-11-12 05:55:58');
INSERT INTO `tb_activity` VALUES (983, 1, 'User membuka halaman Setting', '2024-11-12 05:55:59');
INSERT INTO `tb_activity` VALUES (984, 1, 'User membuka view User', '2024-11-12 05:56:00');
INSERT INTO `tb_activity` VALUES (985, 1, 'User membuka view User', '2024-11-12 05:56:04');
INSERT INTO `tb_activity` VALUES (986, 1, 'User membuka halaman dokumen', '2024-11-12 05:56:06');
INSERT INTO `tb_activity` VALUES (987, 1, 'User membuka halaman dokumen', '2024-11-12 06:07:03');
INSERT INTO `tb_activity` VALUES (988, 1, 'User membuka halaman dokumen', '2024-11-12 06:07:40');
INSERT INTO `tb_activity` VALUES (989, 1, 'User membuka halaman surat masuk', '2024-11-12 06:07:43');
INSERT INTO `tb_activity` VALUES (990, 1, 'User membuka halaman surat masuk', '2024-11-12 06:08:02');
INSERT INTO `tb_activity` VALUES (991, 1, 'User membuka halaman surat masuk', '2024-11-12 06:08:06');
INSERT INTO `tb_activity` VALUES (992, 1, 'User membuka halaman surat masuk', '2024-11-12 06:15:04');
INSERT INTO `tb_activity` VALUES (993, 1, 'User membuka form tambah surat masuk', '2024-11-12 06:15:10');
INSERT INTO `tb_activity` VALUES (994, 1, 'User membuka form tambah surat masuk', '2024-11-12 06:15:44');
INSERT INTO `tb_activity` VALUES (995, 1, 'User membuka form tambah surat masuk', '2024-11-12 06:16:43');
INSERT INTO `tb_activity` VALUES (996, 1, 'User membuka form tambah surat masuk', '2024-11-12 06:17:35');
INSERT INTO `tb_activity` VALUES (997, 1, 'User melakukan penambahan surat masuk', '2024-11-12 06:17:47');
INSERT INTO `tb_activity` VALUES (998, 1, 'User membuka halaman surat masuk', '2024-11-12 06:17:48');
INSERT INTO `tb_activity` VALUES (999, 1, 'User membuka halaman surat masuk', '2024-11-12 06:18:36');
INSERT INTO `tb_activity` VALUES (1000, 1, 'User melakukan Penghapusan Data Dokumen', '2024-11-12 06:18:38');
INSERT INTO `tb_activity` VALUES (1001, 1, 'User membuka halaman surat masuk', '2024-11-12 06:18:38');
INSERT INTO `tb_activity` VALUES (1002, 1, 'User membuka form tambah surat masuk', '2024-11-12 06:18:39');
INSERT INTO `tb_activity` VALUES (1003, 1, 'User membuka form tambah surat masuk', '2024-11-12 06:20:11');
INSERT INTO `tb_activity` VALUES (1004, 1, 'User melakukan penambahan surat masuk', '2024-11-12 06:20:25');
INSERT INTO `tb_activity` VALUES (1005, 1, 'User membuka halaman surat masuk', '2024-11-12 06:20:26');
INSERT INTO `tb_activity` VALUES (1006, 1, 'User melakukan Pengeditan Data Surat Masuk', '2024-11-12 06:20:38');
INSERT INTO `tb_activity` VALUES (1007, 1, 'User membuka halaman surat masuk', '2024-11-12 06:20:38');
INSERT INTO `tb_activity` VALUES (1008, 1, 'User melakukan Penghapusan Data Dokumen', '2024-11-12 06:20:48');
INSERT INTO `tb_activity` VALUES (1009, 1, 'User membuka halaman surat masuk', '2024-11-12 06:20:49');
INSERT INTO `tb_activity` VALUES (1010, 1, 'User membuka halaman dokumen', '2024-11-12 06:20:54');
INSERT INTO `tb_activity` VALUES (1011, 1, 'User membuka halaman surat masuk', '2024-11-12 06:20:56');
INSERT INTO `tb_activity` VALUES (1012, 1, 'User membuka halaman dokumen', '2024-11-12 06:21:03');
INSERT INTO `tb_activity` VALUES (1013, 1, 'User membuka form tambah dokumen', '2024-11-12 06:21:05');
INSERT INTO `tb_activity` VALUES (1014, 1, 'User membuka halaman dokumen', '2024-11-12 06:21:08');
INSERT INTO `tb_activity` VALUES (1015, 1, 'User membuka halaman surat masuk', '2024-11-12 06:21:10');
INSERT INTO `tb_activity` VALUES (1016, 1, 'User membuka form tambah surat masuk', '2024-11-12 06:21:11');
INSERT INTO `tb_activity` VALUES (1017, 1, 'User membuka form tambah surat masuk', '2024-11-12 06:21:51');
INSERT INTO `tb_activity` VALUES (1018, 1, 'User membuka form tambah surat masuk', '2024-11-12 06:22:39');
INSERT INTO `tb_activity` VALUES (1019, 1, 'User melakukan penambahan surat masuk', '2024-11-12 06:22:53');
INSERT INTO `tb_activity` VALUES (1020, 1, 'User membuka halaman surat masuk', '2024-11-12 06:22:53');
INSERT INTO `tb_activity` VALUES (1021, 1, 'User membuka halaman surat masuk', '2024-11-12 06:29:08');
INSERT INTO `tb_activity` VALUES (1022, 1, 'User membuka halaman surat keluar', '2024-11-12 06:29:10');
INSERT INTO `tb_activity` VALUES (1023, 1, 'User membuka form tambah surat keluar', '2024-11-12 06:29:12');
INSERT INTO `tb_activity` VALUES (1024, 1, 'User membuka form tambah surat keluar', '2024-11-12 06:29:55');
INSERT INTO `tb_activity` VALUES (1025, 1, 'User membuka form tambah surat keluar', '2024-11-12 06:31:58');
INSERT INTO `tb_activity` VALUES (1026, 1, 'User membuka form tambah surat keluar', '2024-11-12 06:32:19');
INSERT INTO `tb_activity` VALUES (1027, 1, 'User membuka form tambah surat keluar', '2024-11-12 06:32:56');
INSERT INTO `tb_activity` VALUES (1028, 1, 'User melakukan penambahan surat keluar', '2024-11-12 06:33:16');
INSERT INTO `tb_activity` VALUES (1029, 1, 'User membuka halaman surat keluar', '2024-11-12 06:33:17');
INSERT INTO `tb_activity` VALUES (1030, 1, 'User membuka form tambah surat keluar', '2024-11-12 06:33:19');
INSERT INTO `tb_activity` VALUES (1031, 1, 'User melakukan penambahan surat keluar', '2024-11-12 06:33:24');
INSERT INTO `tb_activity` VALUES (1032, 1, 'User membuka halaman surat keluar', '2024-11-12 06:33:25');
INSERT INTO `tb_activity` VALUES (1033, 1, 'User melakukan Penghapusan Data Surat Keluar', '2024-11-12 06:33:27');
INSERT INTO `tb_activity` VALUES (1034, 1, 'User membuka halaman surat keluar', '2024-11-12 06:33:27');
INSERT INTO `tb_activity` VALUES (1035, 1, 'User membuka form tambah surat keluar', '2024-11-12 06:33:28');
INSERT INTO `tb_activity` VALUES (1036, 1, 'User membuka form tambah surat keluar', '2024-11-12 06:33:42');
INSERT INTO `tb_activity` VALUES (1037, 1, 'User melakukan penambahan surat keluar', '2024-11-12 06:33:52');
INSERT INTO `tb_activity` VALUES (1038, 1, 'User membuka halaman surat keluar', '2024-11-12 06:33:53');
INSERT INTO `tb_activity` VALUES (1039, 1, 'User melakukan Penghapusan Data Surat Keluar', '2024-11-12 06:33:54');
INSERT INTO `tb_activity` VALUES (1040, 1, 'User membuka halaman surat keluar', '2024-11-12 06:33:54');
INSERT INTO `tb_activity` VALUES (1041, 1, 'User membuka form tambah surat keluar', '2024-11-12 06:33:55');
INSERT INTO `tb_activity` VALUES (1042, 1, 'User membuka form tambah surat keluar', '2024-11-12 06:34:15');
INSERT INTO `tb_activity` VALUES (1043, 1, 'User melakukan penambahan surat keluar', '2024-11-12 06:34:25');
INSERT INTO `tb_activity` VALUES (1044, 1, 'User membuka halaman surat keluar', '2024-11-12 06:34:26');
INSERT INTO `tb_activity` VALUES (1045, 1, 'User melakukan Penghapusan Data Surat Keluar', '2024-11-12 06:34:40');
INSERT INTO `tb_activity` VALUES (1046, 1, 'User membuka halaman surat keluar', '2024-11-12 06:34:41');
INSERT INTO `tb_activity` VALUES (1047, 1, 'User membuka halaman surat keluar', '2024-11-12 06:35:33');
INSERT INTO `tb_activity` VALUES (1048, 1, 'User melakukan Pengeditan Data Surat Keluar', '2024-11-12 06:35:54');
INSERT INTO `tb_activity` VALUES (1049, 1, 'User membuka halaman surat keluar', '2024-11-12 06:35:55');
INSERT INTO `tb_activity` VALUES (1050, 1, 'User melakukan Pengeditan Data Surat Keluar', '2024-11-12 06:36:17');
INSERT INTO `tb_activity` VALUES (1051, 1, 'User membuka halaman surat keluar', '2024-11-12 06:36:17');
INSERT INTO `tb_activity` VALUES (1052, 1, 'User membuka halaman surat masuk', '2024-11-12 06:36:20');
INSERT INTO `tb_activity` VALUES (1053, 1, 'User membuka view User', '2024-11-12 06:36:24');
INSERT INTO `tb_activity` VALUES (1054, 1, 'User membuka Log Activity', '2024-11-12 06:36:25');
INSERT INTO `tb_activity` VALUES (1055, 1, 'User membuka halaman Setting', '2024-11-12 06:36:26');
INSERT INTO `tb_activity` VALUES (1056, 1, 'User membuka view User', '2024-11-12 06:36:27');
INSERT INTO `tb_activity` VALUES (1057, 1, 'User membuka halaman surat keluar', '2024-11-12 06:36:30');
INSERT INTO `tb_activity` VALUES (1058, 1, 'User membuka halaman surat masuk', '2024-11-12 06:36:31');
INSERT INTO `tb_activity` VALUES (1059, 1, 'User membuka Dashboard', '2024-11-12 06:36:47');
INSERT INTO `tb_activity` VALUES (1060, 1, 'User membuka halaman surat masuk', '2024-11-12 06:37:53');
INSERT INTO `tb_activity` VALUES (1061, 1, 'User membuka halaman surat keluar', '2024-11-12 06:37:55');
INSERT INTO `tb_activity` VALUES (1062, 1, 'User membuka Dashboard', '2024-11-12 06:37:56');
INSERT INTO `tb_activity` VALUES (1063, 1, 'User membuka Dashboard', '2024-11-12 06:38:42');
INSERT INTO `tb_activity` VALUES (1064, 1, 'User membuka Dashboard', '2024-11-12 06:39:18');
INSERT INTO `tb_activity` VALUES (1065, 1, 'User membuka Dashboard', '2024-11-12 06:39:41');
INSERT INTO `tb_activity` VALUES (1066, 1, 'User membuka Dashboard', '2024-11-12 06:39:48');
INSERT INTO `tb_activity` VALUES (1067, 1, 'User membuka Dashboard', '2024-11-12 06:39:52');
INSERT INTO `tb_activity` VALUES (1068, 1, 'User membuka Dashboard', '2024-11-12 06:40:01');
INSERT INTO `tb_activity` VALUES (1069, 1, 'User membuka Dashboard', '2024-11-12 06:40:32');
INSERT INTO `tb_activity` VALUES (1070, 1, 'User membuka Dashboard', '2024-11-12 06:40:34');
INSERT INTO `tb_activity` VALUES (1071, 1, 'User membuka Dashboard', '2024-11-12 06:40:50');
INSERT INTO `tb_activity` VALUES (1072, 1, 'User membuka Dashboard', '2024-11-12 06:40:53');
INSERT INTO `tb_activity` VALUES (1073, 1, 'User membuka Dashboard', '2024-11-12 06:41:03');
INSERT INTO `tb_activity` VALUES (1074, 1, 'User membuka Dashboard', '2024-11-12 06:41:05');
INSERT INTO `tb_activity` VALUES (1075, 1, 'User membuka Dashboard', '2024-11-12 06:41:09');
INSERT INTO `tb_activity` VALUES (1076, 1, 'User membuka halaman surat masuk', '2024-11-12 06:41:15');
INSERT INTO `tb_activity` VALUES (1077, 1, 'User membuka Dashboard', '2024-11-12 06:41:17');
INSERT INTO `tb_activity` VALUES (1078, 1, 'User membuka Dashboard', '2024-11-12 06:42:15');
INSERT INTO `tb_activity` VALUES (1079, 1, 'User membuka Dashboard', '2024-11-12 06:42:20');
INSERT INTO `tb_activity` VALUES (1080, 1, 'User membuka halaman surat masuk', '2024-11-12 06:42:22');
INSERT INTO `tb_activity` VALUES (1081, 1, 'User membuka Dashboard', '2024-11-12 06:42:24');
INSERT INTO `tb_activity` VALUES (1082, 1, 'User membuka Dashboard', '2024-11-12 06:42:29');
INSERT INTO `tb_activity` VALUES (1083, 1, 'User membuka Dashboard', '2024-11-12 06:42:40');
INSERT INTO `tb_activity` VALUES (1084, 1, 'User membuka Dashboard', '2024-11-12 06:42:42');
INSERT INTO `tb_activity` VALUES (1085, 1, 'User membuka Dashboard', '2024-11-12 06:42:49');
INSERT INTO `tb_activity` VALUES (1086, 1, 'User membuka Dashboard', '2024-11-12 06:42:52');
INSERT INTO `tb_activity` VALUES (1087, 1, 'User membuka Dashboard', '2024-11-12 06:43:00');
INSERT INTO `tb_activity` VALUES (1088, 1, 'User membuka Dashboard', '2024-11-12 06:43:04');
INSERT INTO `tb_activity` VALUES (1089, 1, 'User membuka Dashboard', '2024-11-12 06:43:10');
INSERT INTO `tb_activity` VALUES (1090, 1, 'User membuka Dashboard', '2024-11-12 06:43:13');
INSERT INTO `tb_activity` VALUES (1091, 1, 'User membuka Dashboard', '2024-11-12 06:43:16');
INSERT INTO `tb_activity` VALUES (1092, 1, 'User membuka Dashboard', '2024-11-12 06:43:20');
INSERT INTO `tb_activity` VALUES (1093, 1, 'User membuka Dashboard', '2024-11-12 06:43:27');
INSERT INTO `tb_activity` VALUES (1094, 1, 'User membuka Dashboard', '2024-11-12 06:43:30');
INSERT INTO `tb_activity` VALUES (1095, 1, 'User membuka Dashboard', '2024-11-12 06:43:32');
INSERT INTO `tb_activity` VALUES (1096, 1, 'User membuka Dashboard', '2024-11-12 06:43:35');
INSERT INTO `tb_activity` VALUES (1097, 1, 'User membuka Dashboard', '2024-11-12 06:43:56');
INSERT INTO `tb_activity` VALUES (1098, 1, 'User membuka Dashboard', '2024-11-12 06:44:03');
INSERT INTO `tb_activity` VALUES (1099, 1, 'User membuka halaman surat masuk', '2024-11-12 06:44:32');
INSERT INTO `tb_activity` VALUES (1100, 1, 'User membuka halaman surat masuk', '2024-11-12 06:45:00');
INSERT INTO `tb_activity` VALUES (1101, 1, 'User membuka view User', '2024-11-12 06:45:03');
INSERT INTO `tb_activity` VALUES (1102, 1, 'User membuka Log Activity', '2024-11-12 06:45:05');
INSERT INTO `tb_activity` VALUES (1103, 1, 'User membuka Dashboard', '2024-11-12 06:45:06');
INSERT INTO `tb_activity` VALUES (1104, 1, 'User membuka halaman surat masuk', '2024-11-12 06:46:21');
INSERT INTO `tb_activity` VALUES (1105, 1, 'User membuka halaman surat keluar', '2024-11-12 06:51:12');
INSERT INTO `tb_activity` VALUES (1106, 1, 'User membuka halaman surat keluar', '2024-11-12 06:51:37');
INSERT INTO `tb_activity` VALUES (1107, 1, 'User membuka halaman surat keluar', '2024-11-12 06:51:50');
INSERT INTO `tb_activity` VALUES (1108, 1, 'User membuka halaman surat masuk', '2024-11-12 06:51:51');
INSERT INTO `tb_activity` VALUES (1109, 1, 'User membuka halaman surat keluar', '2024-11-12 06:52:02');
INSERT INTO `tb_activity` VALUES (1110, 1, 'User membuka halaman surat keluar', '2024-11-12 06:52:13');
INSERT INTO `tb_activity` VALUES (1111, 1, 'User membuka view User', '2024-11-12 06:53:49');
INSERT INTO `tb_activity` VALUES (1112, 1, 'User membuka Log Activity', '2024-11-12 06:54:34');

-- ----------------------------
-- Table structure for tb_dokumen
-- ----------------------------
DROP TABLE IF EXISTS `tb_dokumen`;
CREATE TABLE `tb_dokumen`  (
  `id_dokumen` int(11) NOT NULL AUTO_INCREMENT,
  `judul_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kategori_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_dokumen` date NULL DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_dokumen` enum('Aktif','Arsip') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_dokumen`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_dokumen
-- ----------------------------
INSERT INTO `tb_dokumen` VALUES (2, 'Dokumen 1', 'Kategori 1', '2024-11-11', NULL, 'Aktif', 'cek');

-- ----------------------------
-- Table structure for tb_nilai_siswa
-- ----------------------------
DROP TABLE IF EXISTS `tb_nilai_siswa`;
CREATE TABLE `tb_nilai_siswa`  (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NULL DEFAULT NULL,
  `mata_pelajaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nilai` int(11) NULL DEFAULT NULL,
  `semester` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_nilai`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_pengawai
-- ----------------------------
DROP TABLE IF EXISTS `tb_pengawai`;
CREATE TABLE `tb_pengawai`  (
  `id_pengawai` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_telp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_masuk` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_pengawai`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_pengumuman
-- ----------------------------
DROP TABLE IF EXISTS `tb_pengumuman`;
CREATE TABLE `tb_pengumuman`  (
  `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NULL DEFAULT NULL,
  `judul_pengumuman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `konten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_pengumuman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pengumuman`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_setting
-- ----------------------------
DROP TABLE IF EXISTS `tb_setting`;
CREATE TABLE `tb_setting`  (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `nama_web` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_dashboard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_tab` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_setting
-- ----------------------------
INSERT INTO `tb_setting` VALUES (1, 'E-Office', 'sph.jfif', 'sph.jfif', 'sph.jfif');

-- ----------------------------
-- Table structure for tb_siswa
-- ----------------------------
DROP TABLE IF EXISTS `tb_siswa`;
CREATE TABLE `tb_siswa`  (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `nama_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_siswa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_surat_keluar
-- ----------------------------
DROP TABLE IF EXISTS `tb_surat_keluar`;
CREATE TABLE `tb_surat_keluar`  (
  `id_surat_keluar` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_surat` date NULL DEFAULT NULL,
  `tujuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `topik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `diterima_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_baca` enum('Sudah Dibaca','Belum Dibaca') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_proses` enum('Draft','Dikirim','Selesai') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_surat_keluar`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_surat_keluar
-- ----------------------------
INSERT INTO `tb_surat_keluar` VALUES (1, NULL, '10', '2024-11-12', 'bcde', 'abc', NULL, 'abc', 'Belum Dibaca', 'Draft', NULL, NULL);

-- ----------------------------
-- Table structure for tb_surat_masuk
-- ----------------------------
DROP TABLE IF EXISTS `tb_surat_masuk`;
CREATE TABLE `tb_surat_masuk`  (
  `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_surat` date NULL DEFAULT NULL,
  `pengirim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `topik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `diterima_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_baca` enum('Sudah DIbaca','Belum Dibaca') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_proses` enum('Pending','Diproses','Selesai') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_surat_masuk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_surat_masuk
-- ----------------------------
INSERT INTO `tb_surat_masuk` VALUES (3, NULL, '10', '2024-11-12', 'abc', 'abcde', NULL, 'bbcd', 'Belum Dibaca', 'Pending', NULL);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_level` enum('1','2','3','4','5') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `delete_at` datetime(0) NULL DEFAULT NULL,
  `create_by` datetime(0) NULL DEFAULT NULL,
  `update_by` datetime(0) NULL DEFAULT NULL,
  `delete_by` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'admin@gmail.com', '1', '1731385300_c6a394809360932e6fa6.jpg', NULL, '2024-10-08 22:50:30', NULL, NULL, '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_user` VALUES (50, 'Kepala Sekolah', 'c81e728d9d4c2f636f067f89cc14862c', 'kepsek@gmail.com', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (51, 'Kesiswaan', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'kesiswaan@gmail.com', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (52, 'HRD', 'a87ff679a2f3e71d9181a67b7542122c', 'HRD@Gmail.com', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (53, 'Guru', 'e4da3b7fbbce2345d7772b0674a318d5', 'guru@gmail.com', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
