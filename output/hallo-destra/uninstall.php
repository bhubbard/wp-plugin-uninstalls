<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('img_gambar1');
delete_site_option('img_gambar1');
delete_option('judul_img_gambar1');
delete_site_option('judul_img_gambar1');
delete_option('img_gambar2');
delete_site_option('img_gambar2');
delete_option('judul_img_gambar2');
delete_site_option('judul_img_gambar2');
delete_option('img_gambar3');
delete_site_option('img_gambar3');
delete_option('judul_img_gambar3');
delete_site_option('judul_img_gambar3');
delete_option('img_gambar4');
delete_site_option('img_gambar4');
delete_option('judul_img_gambar4');
delete_site_option('judul_img_gambar4');
delete_option('img_gambar5');
delete_site_option('img_gambar5');
delete_option('judul_img_gambar5');
delete_site_option('judul_img_gambar5');
delete_option('img_gambar6');
delete_site_option('img_gambar6');
delete_option('judul_img_gambar6');
delete_site_option('judul_img_gambar6');
delete_option('img_gambar7');
delete_site_option('img_gambar7');
delete_option('judul_img_gambar7');
delete_site_option('judul_img_gambar7');
delete_option('img_gambar8');
delete_site_option('img_gambar8');
delete_option('judul_img_gambar8');
delete_site_option('judul_img_gambar8');
delete_option('img_gambar9');
delete_site_option('img_gambar9');
delete_option('judul_img_gambar9');
delete_site_option('judul_img_gambar9');
delete_option('google_verification');
delete_site_option('google_verification');
delete_option('yahoo_verification');
delete_site_option('yahoo_verification');

