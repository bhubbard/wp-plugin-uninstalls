<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simplicy_css_code');
delete_site_option('simplicy_css_code');
delete_option('simplicy_read_code');
delete_site_option('simplicy_read_code');
delete_option('simplicy_title_code');
delete_site_option('simplicy_title_code');

