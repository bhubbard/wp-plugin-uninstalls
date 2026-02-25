<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('h5p_track_user');
delete_site_option('h5p_track_user');
delete_option('h5p_has_request_user_consent');
delete_site_option('h5p_has_request_user_consent');
delete_option('h5p_hub_is_enabled');
delete_site_option('h5p_hub_is_enabled');
delete_option('h5p_send_usage_statistics');
delete_site_option('h5p_send_usage_statistics');
delete_option('h5p_insert_method');
delete_site_option('h5p_insert_method');
delete_option('h5p_content_type_cache_updated_at');
delete_site_option('h5p_content_type_cache_updated_at');
delete_option('h5p_embed');
delete_site_option('h5p_embed');
delete_option('h5p_multisite_capabilities');
delete_site_option('h5p_multisite_capabilities');
delete_option('h5p_last_info_print');
delete_site_option('h5p_last_info_print');
delete_option('h5p_ext_communication');
delete_site_option('h5p_ext_communication');
delete_option('h5p_update_available');
delete_site_option('h5p_update_available');
delete_option('h5p_current_update');
delete_site_option('h5p_current_update');
delete_option('h5p_update_available_path');
delete_site_option('h5p_update_available_path');
delete_option('h5p_frame');
delete_site_option('h5p_frame');
delete_option('h5p_export');
delete_site_option('h5p_export');
delete_option('h5p_copyright');
delete_site_option('h5p_copyright');
delete_option('h5p_icon');
delete_site_option('h5p_icon');
delete_option('h5p_save_content_state');
delete_site_option('h5p_save_content_state');
delete_option('h5p_save_content_frequency');
delete_site_option('h5p_save_content_frequency');
delete_option('h5p_show_toggle_view_others_h5p_contents');
delete_site_option('h5p_show_toggle_view_others_h5p_contents');
delete_option('h5p_enable_lrs_content_types');
delete_site_option('h5p_enable_lrs_content_types');
delete_option('h5p_check_h5p_requirements');
delete_site_option('h5p_check_h5p_requirements');
delete_option('h5p_site_key');
delete_site_option('h5p_site_key');
delete_option('h5p_h5p_site_uuid');
delete_site_option('h5p_h5p_site_uuid');
delete_option('h5p_version');
delete_site_option('h5p_version');
delete_option('h5p_minitutorial');
delete_site_option('h5p_minitutorial');
delete_option('h5p_library_updates');
delete_site_option('h5p_library_updates');
delete_option('h5p_site_type');
delete_site_option('h5p_site_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'h5p_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('dirsize_cache');
delete_site_transient('dirsize_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('h5p_daily_cleanup');

