<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpvr_edd_license_status');
delete_site_option('wpvr_edd_license_status');
delete_option('wpvr_feed_review_request');
delete_site_option('wpvr_feed_review_request');
delete_option('wpvr_editor_active');
delete_site_option('wpvr_editor_active');
delete_option('wpvr_author_active');
delete_site_option('wpvr_author_active');
delete_option('wpvr_fontawesome_disable');
delete_site_option('wpvr_fontawesome_disable');
delete_option('wpvr_cardboard_disable');
delete_site_option('wpvr_cardboard_disable');
delete_option('wpvr_webp_conversion');
delete_site_option('wpvr_webp_conversion');
delete_option('mobile_media_resize');
delete_site_option('mobile_media_resize');
delete_option('high_res_image');
delete_site_option('high_res_image');
delete_option('dis_on_hover');
delete_site_option('dis_on_hover');
delete_option('wpvr_frontend_notice');
delete_site_option('wpvr_frontend_notice');
delete_option('wpvr_frontend_notice_area');
delete_site_option('wpvr_frontend_notice_area');
delete_option('wpvr_script_control');
delete_site_option('wpvr_script_control');
delete_option('wpvr_script_list');
delete_site_option('wpvr_script_list');
delete_option('wpvr_video_script_control');
delete_site_option('wpvr_video_script_control');
delete_option('wpvr_video_script_list');
delete_site_option('wpvr_video_script_list');
delete_option('dokan_vendor_active');
delete_site_option('dokan_vendor_active');
delete_option('wpvr_black_friday_notice');
delete_site_option('wpvr_black_friday_notice');
delete_option('_wpvr_eid_al_adha_2024');
delete_site_option('_wpvr_eid_al_adha_2024');
delete_option('wpvr_posthog_access_enabled');
delete_site_option('wpvr_posthog_access_enabled');
delete_option('wpvr_opt_in_toggle');
delete_site_option('wpvr_opt_in_toggle');
delete_option('wpvr_allow_tracking');
delete_site_option('wpvr_allow_tracking');
delete_option('wpvr_is_playground');
delete_site_option('wpvr_is_playground');
delete_option('wpvr_edd_license_key');
delete_site_option('wpvr_edd_license_key');
delete_option('wpvr_enable_woocommerce');
delete_site_option('wpvr_enable_woocommerce');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpvr_plugin_installed');
delete_site_option('wpvr_plugin_installed');
delete_option('wpvr_version');
delete_site_option('wpvr_version');
delete_option('wpvr_installed_time');
delete_site_option('wpvr_installed_time');
delete_option('wpvr_industry_name');
delete_site_option('wpvr_industry_name');
delete_option('wpvr_setup_wizard_started');
delete_site_option('wpvr_setup_wizard_started');
delete_option('wpvr_setup_wizard_completed');
delete_site_option('wpvr_setup_wizard_completed');
delete_option('wpvr_first_strike_completed');
delete_site_option('wpvr_first_strike_completed');
delete_option('wpvr_last_core_action');
delete_site_option('wpvr_last_core_action');
delete_option('test-telemetry-plugin_allow_tracking');
delete_site_option('test-telemetry-plugin_allow_tracking');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_last_core_action' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpvr_sell_international_mother_language_day_2026_notification_bar');
delete_site_option('wpvr_sell_international_mother_language_day_2026_notification_bar');
delete_option('wpvr_warning');
delete_site_option('wpvr_warning');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_wpvr_activation_redirect');
delete_site_transient('_wpvr_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('coderex_telemetry_weekly_report');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'panodata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'panodata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'panodata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'panodata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpvr_checklist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpvr_checklist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpvr_checklist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpvr_checklist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpvr_created_from_wizard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpvr_created_from_wizard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpvr_created_from_wizard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpvr_created_from_wizard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpvr_wizard_industry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpvr_wizard_industry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpvr_wizard_industry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpvr_wizard_industry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpvr_allowed_roles_levels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpvr_allowed_roles_levels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpvr_allowed_roles_levels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpvr_allowed_roles_levels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpvr_is_demo_tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpvr_is_demo_tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpvr_is_demo_tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpvr_is_demo_tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpvr_tour_embedded_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpvr_tour_embedded_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpvr_tour_embedded_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpvr_tour_embedded_tracked' ) );

