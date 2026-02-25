<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('teachable_general_settings');
delete_site_option('teachable_general_settings');
delete_option('teachable_data');
delete_site_option('teachable_data');
delete_option('teachable_activated');
delete_site_option('teachable_activated');

// Delete Transients
delete_transient('transient_teachable_general_settings_wp_key');
delete_site_transient('transient_teachable_general_settings_wp_key');
delete_transient('transient_teachable_general_settings_sync_now');
delete_site_transient('transient_teachable_general_settings_sync_now');
delete_transient('transient_teachable_general_settings_sync_data_form');
delete_site_transient('transient_teachable_general_settings_sync_data_form');

// Clear Cron Jobs

