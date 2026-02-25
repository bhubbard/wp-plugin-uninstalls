<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tka_lsc_title');
delete_site_option('tka_lsc_title');
delete_option('tka_lsc_format');
delete_site_option('tka_lsc_format');
delete_option('tka_lsc_fuseau');
delete_site_option('tka_lsc_fuseau');
delete_option('tka_lsc_hidesecond');
delete_site_option('tka_lsc_hidesecond');
delete_option('tka_lsc_font');
delete_site_option('tka_lsc_font');
delete_option('tka_lsc_font_size');
delete_site_option('tka_lsc_font_size');
delete_option('tka_lsc_font_color');
delete_site_option('tka_lsc_font_color');
delete_option('tka_lsc_font_weight');
delete_site_option('tka_lsc_font_weight');

