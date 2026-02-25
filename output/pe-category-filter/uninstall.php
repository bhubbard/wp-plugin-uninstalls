<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pecf_excluded_categories');
delete_site_option('pecf_excluded_categories');
delete_option('pecf_settings');
delete_site_option('pecf_settings');

