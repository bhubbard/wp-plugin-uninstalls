<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('default_a_options');
delete_site_option('default_a_options');
delete_option('advancediFrameParameterData');
delete_site_option('advancediFrameParameterData');
delete_option('advancediFrameAdminOptions');
delete_site_option('advancediFrameAdminOptions');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'aip_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
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
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aip_cache_check_%', '_site_transient_aip_cache_check_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('aip_discount');
delete_site_transient('aip_discount');
delete_transient('aip_discount_message');
delete_site_transient('aip_discount_message');
delete_transient('aip_version');
delete_site_transient('aip_version');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aip_%', '_site_transient_aip_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('ai_no_rights_post_errors');
delete_site_transient('ai_no_rights_post_errors');
delete_transient('ai_save_post_errors');
delete_site_transient('ai_save_post_errors');
delete_transient('ai_save_post_execution');
delete_site_transient('ai_save_post_execution');
delete_transient('ai_save_post_unfiltered_html');
delete_site_transient('ai_save_post_unfiltered_html');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('ai_check_iframes_event');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'closedpostboxes_toplevel_page_advanced-iframe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'closedpostboxes_toplevel_page_advanced-iframe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'closedpostboxes_toplevel_page_advanced-iframe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'closedpostboxes_toplevel_page_advanced-iframe' ) );

