<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('etc_json_settings');
delete_site_option('etc_json_settings');
delete_option('etc_width_settings');
delete_site_option('etc_width_settings');

