<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('site_name');
delete_site_option('site_name');
delete_option('wpms_sitemaint_settings');
delete_site_option('wpms_sitemaint_settings');

