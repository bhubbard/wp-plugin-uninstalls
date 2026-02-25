<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gravitecnet_option_app_key');
delete_site_option('gravitecnet_option_app_key');
delete_option('pwaforwp_settings');
delete_site_option('pwaforwp_settings');
delete_option('OneSignalWPSetting');
delete_site_option('OneSignalWPSetting');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wisdom_deactivation_reason_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wisdom_deactivation_details_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wisdom_allow_tracking');
delete_site_option('wisdom_allow_tracking');
delete_option('wisdom_last_track_time');
delete_site_option('wisdom_last_track_time');
delete_option('pwaforwp_wisdom_block_notice');
delete_site_option('pwaforwp_wisdom_block_notice');
delete_option('wisdom_collect_email');
delete_site_option('wisdom_collect_email');
delete_option('wisdom_admin_emails');
delete_site_option('wisdom_admin_emails');
delete_option('pwaforwp_review_never');
delete_site_option('pwaforwp_review_never');
delete_option('pwaforwp_review_notice_bar_close_date');
delete_site_option('pwaforwp_review_notice_bar_close_date');
delete_option('autoptimize_cdn_url');
delete_site_option('autoptimize_cdn_url');
delete_option('wph_settings');
delete_site_option('wph_settings');
delete_option('pwaforwp_visibility_settings');
delete_site_option('pwaforwp_visibility_settings');
delete_option('pwawppro_license_info');
delete_site_option('pwawppro_license_info');
delete_option('pwaforwp_update_pre_cache_list');
delete_site_option('pwaforwp_update_pre_cache_list');
delete_option('pwaforwp_activation_date');
delete_site_option('pwaforwp_activation_date');
delete_option('pwa_token_list');
delete_site_option('pwa_token_list');
delete_option('pwaforwp_pre_cache_post_ids');
delete_site_option('pwaforwp_pre_cache_post_ids');
delete_option('pwaforwp_admin_notice_transient');
delete_site_option('pwaforwp_admin_notice_transient');
delete_option('_transient_pwaforwp_restapi_check');
delete_site_option('_transient_pwaforwp_restapi_check');
delete_option('pwa_uninstall_data');
delete_site_option('pwa_uninstall_data');

// Delete Transients
delete_transient('pwaforwp_pre_cache_post_ids');
delete_site_transient('pwaforwp_pre_cache_post_ids');
delete_transient('pwaforwp_restapi_check');
delete_site_transient('pwaforwp_restapi_check');
delete_transient('pwaforwp_file_change_transient');
delete_site_transient('pwaforwp_file_change_transient');
delete_transient('pwaforwp_addon_zto7');
delete_site_transient('pwaforwp_addon_zto7');
delete_transient('pwaforwp_addons_expired');
delete_site_transient('pwaforwp_addons_expired');
delete_transient('pwaforwp_addons_set_transient');
delete_site_transient('pwaforwp_addons_set_transient');
delete_transient('plugin_slugs');
delete_site_transient('plugin_slugs');
delete_transient('pwaforwp_admin_notice_transient');
delete_site_transient('pwaforwp_admin_notice_transient');

// Clear Cron Jobs
wp_clear_scheduled_hook('put_do_weekly_action');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );

