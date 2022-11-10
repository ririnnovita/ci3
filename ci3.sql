-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Nov 2022 pada 02.54
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(7, 'ririn novita sari', 'rrnnovv@gmail.com', 'default.jpg', '$2y$10$0gnhivNeM9ZifNMcPHW8v.CTnUWhf70O0zBo2mNO4Scgq0GrOZUFm', 1, 1, 1666229822),
(10, 'ririn novita sari', 'ririnnovv@gmail.com', 'default.jpg', '$2y$10$3vBpnMs38fZyd8RL2lR94.DfUbGpQp2jKsQ3PPNLfQkXq6trGfmZm', 2, 1, 1666233402),
(11, 'ririn novita sari', 'ririnnovv.business@gmail.com', 'default.jpg', '$2y$10$dqU0f/v6993ktu80bYe79ewnIrdXG14o7QOHodBv9qx4zzRHUEt3K', 2, 1, 1667437004);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(26, 1, 2),
(27, 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Sub Menu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(18, 13, 'FanPages', 'others/fanpages', 'fab fa-fw fa-youtube', 1),
(24, 1, 'Role', 'admin/role', 'fas fa-fw fa-user', 1),
(28, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(2, 'rrnnovv@gmail.com', 'StMGsS1Ugyw1EuRdEtiBrhzXldzcxPJOybwZYoN86FQ=', 1666229536),
(3, 'rrnnovv@gmail.com', 'LJpivpxjYL7KYzElkPlwQdXUUZsMu34AkvmBBt/yRGA=', 1666229745),
(4, 'rrnnovv@gmail.com', 'mqfdi6GXnYd7/GWJJzWHSdJoffczkDC5xOtG5YIskqY=', 1666229822),
(5, 'ririnnovv@gmail.com', '5jUNpduP+sQPMjhPYFSbiGZavydBeMcuoTVoMtus0RI=', 1666230160),
(6, 'ririnnovv@gmail.com', 'eeG1gr7hpFYUDLjvMEDZ+DPSSUqPyZvBN2yGbKh4a00=', 1666233026),
(7, 'ririnnovv@gmail.com', 'alTCDbEofGLwkAF1ugzXLPrggqz3HpgSrn+H8E9zIc4=', 1666233402),
(8, 'ririnnovv@gmail.com', 'IqfQy2JFF15kYjwUE651MOg8s7zZA+e+YVec538JxE4=', 1667435064),
(9, 'ririnnovv@gmail.com', 'rbkqfJs5hvmDtkzyBbSseVTvn2TlFkQhg8ms5lTRW7w=', 1667435795),
(10, 'ririnnovv@gmail.com', 'vY+xvqciDMRLqsagCVYBWsWIUBDMgo98M3eow64h/BE=', 1667436173),
(11, 'ririnnovv@gmail.com', 'TbidMuOFTdWqsvsQ4wIOLAhBbSsgrWJP4+H8ndqLDOA=', 1667436199),
(12, 'ririnnovv@gmail.com', 'FhDTGJHidrC5UZ9qQj/rY+kA31HwfDxkqxVh93+pYGY=', 1667436507),
(14, 'ririnnovv.business@gmail.com', 'hALhZpA8jlnLKonCGl+ft88aTjxTt4b7C7adVIWMKeI=', 1667437272),
(15, 'ririnnovv.business@gmail.com', 'Hgzc08+htlnLPIMYUwIPdY5uyiMv/MfFZTwNKIQY9o8=', 1667439801),
(16, 'ririnnovv.business@gmail.com', '0JZMCvHwtO1qdbvBOLQV78EDba8zO2xOkjqgQcQs82A=', 1667440571),
(17, 'ririnnovv.business@gmail.com', 'wUS4/gXYyc+sLR6Qyz90/r1eB+/KANd7XXEHftEb8ts=', 1667440682),
(18, 'ririnnovv.business@gmail.com', 'jfCn65/KjokkALEqzN/wKI/NIu3U2ZmpiupKUc/pIUw=', 1667440830),
(19, 'ririnnovv@gmail.com', 'mKy8U0gtPL4LnEAAJAk2b0iiMoxRGUqFwhFyYYFB65Y=', 1667442108),
(20, 'ririnnovv@gmail.com', '6jh3KFGNd98nab5u1hd1RJCbkxWja4PbTmjHRT/IgL4=', 1667442160),
(21, 'ririnnovv@gmail.com', 'yH6lBPnyZPGHDTXOinEfN4ifTx2ZUQfbMu80C2AmjUM=', 1667442170),
(22, 'ririnnovv@gmail.com', 'D8oUspHAdTo1wbk057fhjoQmh8riWLjcTFASoosvz0A=', 1667442192),
(23, 'ririnnovv@gmail.com', 'nfHarr0UePho/F5k0yRyHtvZlHU6R5SDA5wsqJ7qCoo=', 1667442245),
(24, 'ririnnovv@gmail.com', 'Ib734E1p+k1FKxq1JGdbuOuKUV80IuFlLoekKu9Fq78=', 1667443017);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
