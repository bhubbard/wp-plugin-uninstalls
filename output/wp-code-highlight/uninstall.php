<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_code_highlight_themes');
delete_site_option('wp_code_highlight_themes');
delete_option('wp_code_highlight_line_numbers');
delete_site_option('wp_code_highlight_line_numbers');
delete_option('wp_code_highlight_button');
delete_site_option('wp_code_highlight_button');
delete_option('wp_code_highlight_deactivate');
delete_site_option('wp_code_highlight_deactivate');

