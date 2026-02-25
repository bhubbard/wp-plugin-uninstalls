<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mz_mobilize_america_settings');
delete_site_option('mz_mobilize_america_settings');
delete_option('mz_mobilize_america');
delete_site_option('mz_mobilize_america');

