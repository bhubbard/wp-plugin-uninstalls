<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notice_dissmissed');
delete_site_option('notice_dissmissed');
delete_option('widgetkit_save_settings');
delete_site_option('widgetkit_save_settings');
delete_option('widgetkit_save_woo_settings');
delete_site_option('widgetkit_save_woo_settings');
delete_option('widgetkit_save_woo_single_settings');
delete_site_option('widgetkit_save_woo_single_settings');
delete_option('widgetkit_save_ld_settings');
delete_site_option('widgetkit_save_ld_settings');
delete_option('widgetkit_save_lp_settings');
delete_site_option('widgetkit_save_lp_settings');
delete_option('widgetkit_save_sensei_settings');
delete_site_option('widgetkit_save_sensei_settings');
delete_option('widgetkit_save_lifter_settings');
delete_site_option('widgetkit_save_lifter_settings');
delete_option('widgetkit_save_tutor_settings');
delete_site_option('widgetkit_save_tutor_settings');
delete_option('wkfe_mailchimp_api_key');
delete_site_option('wkfe_mailchimp_api_key');
delete_option('wkfe_mailchimp_list_id');
delete_site_option('wkfe_mailchimp_list_id');
delete_option('wk_pro_license_key');
delete_site_option('wk_pro_license_key');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wk-td-ads-notice');
delete_site_option('wk-td-ads-notice');
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

// Delete Transients
delete_transient('changelog_data');
delete_site_transient('changelog_data');

// Clear Cron Jobs

