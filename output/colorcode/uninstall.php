<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_colorcode_themes');
delete_site_option('wp_colorcode_themes');
delete_option('wp_colorcode_line_number');
delete_site_option('wp_colorcode_line_number');

