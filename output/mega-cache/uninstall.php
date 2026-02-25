<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_extensions' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('atec_allow_integrity_check');
delete_site_option('atec_allow_integrity_check');
delete_option('atec_WPB_settings');
delete_site_option('atec_WPB_settings');
delete_option('atec_WPDP_settings');
delete_site_option('atec_WPDP_settings');
delete_option('atec_WPDV_settings');
delete_site_option('atec_WPDV_settings');
delete_option('atec_WPLU_settings');
delete_site_option('atec_WPLU_settings');
delete_option('atec_WPO_settings');
delete_site_option('atec_WPO_settings');
delete_option('atec_WPSM_mail_tested');
delete_site_option('atec_WPSM_mail_tested');
delete_option('atec_wpwp_active');
delete_site_option('atec_wpwp_active');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_admin_bar' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('atec_wpdp_latest');
delete_site_option('atec_wpdp_latest');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('atec_wpb_debug');
delete_site_option('atec_wpb_debug');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_active' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('atec_wpmc_debug');
delete_site_option('atec_wpmc_debug');
delete_option('atec_WPMC_extensions');
delete_site_option('atec_WPMC_extensions');
delete_option('atec_WPMC_settings');
delete_site_option('atec_WPMC_settings');
delete_option('atec_WPMC_prime');
delete_site_option('atec_WPMC_prime');
delete_option('atec_WPCA_settings');
delete_site_option('atec_WPCA_settings');

// Delete Transients
delete_transient('atec_license_code_MEGA');
delete_site_transient('atec_license_code_MEGA');

// Clear Cron Jobs
wp_clear_scheduled_hook('atec_wpmc_auto_prime');

