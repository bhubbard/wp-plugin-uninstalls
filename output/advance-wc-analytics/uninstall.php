<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awca_auth_settings');
delete_site_option('awca_auth_settings');
delete_option('awca_refresh_token_fail');
delete_site_option('awca_refresh_token_fail');
delete_option('awca_granted_scopes');
delete_site_option('awca_granted_scopes');
delete_option('custom_dimension_generated');
delete_site_option('custom_dimension_generated');
delete_option('ga_properties');
delete_site_option('ga_properties');
delete_option('awca_access_token');
delete_site_option('awca_access_token');
delete_option('awca_dash_settings');
delete_site_option('awca_dash_settings');
delete_option('awca_settings');
delete_site_option('awca_settings');
delete_option('awca_event_settings');
delete_site_option('awca_event_settings');
delete_option('awca_track_settings');
delete_site_option('awca_track_settings');
delete_option('measurement_key');
delete_site_option('measurement_key');
delete_option('awca_advance_settings');
delete_site_option('awca_advance_settings');
delete_option('awca_review_request_time');
delete_site_option('awca_review_request_time');
delete_option('measurement_key_process');
delete_site_option('measurement_key_process');
delete_option('custom_dimension_process');
delete_site_option('custom_dimension_process');
delete_option('awca_refresh_token');
delete_site_option('awca_refresh_token');
delete_option('dimension_key');
delete_site_option('dimension_key');
delete_option('awca_current_tab_id');
delete_site_option('awca_current_tab_id');
delete_option('print_js');
delete_site_option('print_js');
delete_option('awca_old_url');
delete_site_option('awca_old_url');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'awca_already_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'awca_already_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'awca_already_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'awca_already_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'awca_refund_already_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'awca_refund_already_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'awca_refund_already_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'awca_refund_already_tracked' ) );

