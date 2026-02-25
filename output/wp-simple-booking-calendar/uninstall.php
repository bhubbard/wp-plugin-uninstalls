<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsbc_settings');
delete_site_option('wpsbc_settings');
delete_option('wpsbc_version');
delete_site_option('wpsbc_version');
delete_option('wpsbc_first_activation');
delete_site_option('wpsbc_first_activation');
delete_option('wpsbc_upgrade_8_0_0');
delete_site_option('wpsbc_upgrade_8_0_0');
delete_option('wpsbc_upgrade_8_0_0_skipped');
delete_site_option('wpsbc_upgrade_8_0_0_skipped');
delete_option('wpsbc_serial_key');
delete_site_option('wpsbc_serial_key');
delete_option('wpsbc_registered_website_id');
delete_site_option('wpsbc_registered_website_id');
delete_option('wp-simple-booking-calendar-options');
delete_site_option('wp-simple-booking-calendar-options');
delete_option('wpsbc_db_version');
delete_site_option('wpsbc_db_version');

// Delete Transients
delete_transient('wpsbc_serial_status');
delete_site_transient('wpsbc_serial_status');

