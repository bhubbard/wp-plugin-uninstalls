<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ngg_wizard');
delete_site_option('ngg_wizard');
delete_option('nextgen_over_time');
delete_site_option('nextgen_over_time');
delete_option('pope_module_list');
delete_site_option('pope_module_list');
delete_option('hide_am_notices');
delete_site_option('hide_am_notices');
delete_option('ngg_options');
delete_site_option('ngg_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ngg_license_status_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ngg_license_level_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ngg_last_license_check');
delete_site_option('ngg_last_license_check');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ngg_license_expiration_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ngg_options_version');
delete_site_option('ngg_options_version');
delete_option('envira_cdn_config');
delete_site_option('envira_cdn_config');
delete_option('ngg_admin_menu_tooltip');
delete_site_option('ngg_admin_menu_tooltip');
delete_option('ngg_onboarding_data');
delete_site_option('ngg_onboarding_data');
delete_option('photocrati_license_default');
delete_site_option('photocrati_license_default');
delete_option('ngg_init_check');
delete_site_option('ngg_init_check');
delete_option('ngg_update_exists');
delete_site_option('ngg_update_exists');
delete_option('ngg_db_version');
delete_site_option('ngg_db_version');
delete_option('ngg_next_update');
delete_site_option('ngg_next_update');
delete_option('ngg_ftp_root_path');
delete_site_option('ngg_ftp_root_path');
delete_option('ngg_api_execution_lock');
delete_site_option('ngg_api_execution_lock');
delete_option('ngg_api_job_list');
delete_site_option('ngg_api_job_list');
delete_option('imagely_dates_migrated');
delete_site_option('imagely_dates_migrated');
delete_option('ngg_transient_groups');
delete_site_option('ngg_transient_groups');
delete_option('photocrati_cache_tracker');
delete_site_option('photocrati_cache_tracker');
delete_option('nextgen_usage_tracking_last_checkin');
delete_site_option('nextgen_usage_tracking_last_checkin');
delete_option('nextgen_usage_tracking_config');
delete_site_option('nextgen_usage_tracking_config');

// Delete Transients
delete_transient('ngg-activated');
delete_site_transient('ngg-activated');
delete_transient('dirsize_cache');
delete_site_transient('dirsize_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('ngg_delete_expired_transients');
wp_clear_scheduled_hook('nextgen_admin_notifications_update');
wp_clear_scheduled_hook('nextgen_usage_tracking_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ngg_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ngg_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ngg_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ngg_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nextgen_api_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nextgen_api_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nextgen_api_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nextgen_api_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pricelist_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pricelist_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pricelist_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pricelist_id' ) );

