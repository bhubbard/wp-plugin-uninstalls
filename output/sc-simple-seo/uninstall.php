<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scseo_settings');
delete_site_option('scseo_settings');
delete_option('scseo_language');
delete_site_option('scseo_language');

