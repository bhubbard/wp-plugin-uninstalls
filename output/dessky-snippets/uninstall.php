<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dsnp_error');
delete_site_option('dsnp_error');
delete_option('dsnp_settings');
delete_site_option('dsnp_settings');

