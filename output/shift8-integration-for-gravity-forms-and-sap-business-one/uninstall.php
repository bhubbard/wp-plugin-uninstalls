<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shift8_gravitysap_settings');
delete_site_option('shift8_gravitysap_settings');
delete_option('shift8_gravitysap_item_codes_data');
delete_site_option('shift8_gravitysap_item_codes_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('shift8_gravitysap_cleanup_logs');

