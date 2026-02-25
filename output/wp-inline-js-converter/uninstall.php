<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wijc_active');
delete_site_option('wijc_active');
delete_option('wijc_tofile');
delete_site_option('wijc_tofile');
delete_option('wijc_tofile_css');
delete_site_option('wijc_tofile_css');
delete_option('wijc_compress');
delete_site_option('wijc_compress');
delete_option('wijc_compress_css');
delete_site_option('wijc_compress_css');
delete_option('wijc_compress_html');
delete_site_option('wijc_compress_html');

