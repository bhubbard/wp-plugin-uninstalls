<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pb_activated_time');
delete_site_option('pb_activated_time');
delete_option('bit14_rtl_language');
delete_site_option('bit14_rtl_language');
delete_option('bit14_enable_fontawesone');
delete_site_option('bit14_enable_fontawesone');
delete_option('bit14_enable_googlefonts');
delete_site_option('bit14_enable_googlefonts');
delete_option('wpb_js_google_fonts_subsets');
delete_site_option('wpb_js_google_fonts_subsets');

