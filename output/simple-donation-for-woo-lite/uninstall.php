<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('i13_simple_donations_values');
delete_site_option('i13_simple_donations_values');
delete_option('i13_simple_donations_settings');
delete_site_option('i13_simple_donations_settings');
delete_option('i13_woo_simple_donation_multisite_activated');
delete_site_option('i13_woo_simple_donation_multisite_activated');
delete_option('i13_woo_sd_messages');
delete_site_option('i13_woo_sd_messages');
delete_option('i13_simple_donations_msg_settings');
delete_site_option('i13_simple_donations_msg_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

