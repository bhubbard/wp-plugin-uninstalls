<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
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
delete_option('elementor_controls_usage');
delete_site_option('elementor_controls_usage');
delete_option('wowelements_widgets');
delete_site_option('wowelements_widgets');
delete_option('wowelements_extensions');
delete_site_option('wowelements_extensions');
delete_option('wowelements_google_map_key');
delete_site_option('wowelements_google_map_key');
delete_option('wowelements_mapbox_access_token');
delete_site_option('wowelements_mapbox_access_token');
delete_option('wowelements_facebook_app_id');
delete_site_option('wowelements_facebook_app_id');
delete_option('wowelements_facebook_app_secret');
delete_site_option('wowelements_facebook_app_secret');
delete_option('wowelements_google_client_id');
delete_site_option('wowelements_google_client_id');
delete_option('wowelements_yelp_client_id');
delete_site_option('wowelements_yelp_client_id');
delete_option('wowelements_yelp_api_key');
delete_site_option('wowelements_yelp_api_key');
delete_option('wowelements_other_settings');
delete_site_option('wowelements_other_settings');
delete_option('wowe_compare_products_page_id');
delete_site_option('wowe_compare_products_page_id');
delete_option('lcp_enable_magic_copy_btn_specific_section');
delete_site_option('lcp_enable_magic_copy_btn_specific_section');
delete_option('lcp_enable_copy_paste_btn');
delete_site_option('lcp_enable_copy_paste_btn');
delete_option('lcp_enable_magic_copy_btn');
delete_site_option('lcp_enable_magic_copy_btn');
delete_option('lcp_enable_magic_copy_btn_login_user');
delete_site_option('lcp_enable_magic_copy_btn_login_user');
delete_option('elementor_viewport_lg');
delete_site_option('elementor_viewport_lg');
delete_option('elementor_viewport_md');
delete_site_option('elementor_viewport_md');
delete_option('wowelements_api_settings');
delete_site_option('wowelements_api_settings');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('wowelements_widget_usage_stats');
delete_site_transient('wowelements_widget_usage_stats');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wowe_changelog_widget_%', '_site_transient_wowe_changelog_widget_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wowe-category-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wowe-category-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wowe-category-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wowe-category-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wowelements_video_link_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wowelements_video_link_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wowelements_video_link_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wowelements_video_link_meta_key' ) );

