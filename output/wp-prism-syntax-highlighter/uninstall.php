<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('default_language');
delete_site_option('default_language');
delete_option('default_inline');
delete_site_option('default_inline');
delete_option('default_line_numbers');
delete_site_option('default_line_numbers');
delete_option('custom_prism_css');
delete_site_option('custom_prism_css');
delete_option('custom_prism_js');
delete_site_option('custom_prism_js');
delete_option('notice_warn_theme_css');
delete_site_option('notice_warn_theme_css');

