-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('img_gambar1', 'judul_img_gambar1', 'img_gambar2', 'judul_img_gambar2', 'img_gambar3', 'judul_img_gambar3', 'img_gambar4', 'judul_img_gambar4', 'img_gambar5', 'judul_img_gambar5', 'img_gambar6', 'judul_img_gambar6', 'img_gambar7', 'judul_img_gambar7', 'img_gambar8', 'judul_img_gambar8', 'img_gambar9', 'judul_img_gambar9', 'google_verification', 'yahoo_verification');

