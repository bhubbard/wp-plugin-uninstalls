<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fetp_options');
delete_site_option('fetp_options');
delete_option('fetp_themes');
delete_site_option('fetp_themes');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_price' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fetp_cookie');
delete_site_option('fetp_cookie');
delete_option('fetp_select');
delete_site_option('fetp_select');
delete_option('fetp_last_cron');
delete_site_option('fetp_last_cron');
delete_option('fetp_clean_up_frequency');
delete_site_option('fetp_clean_up_frequency');
delete_option('fetp_enable_download');
delete_site_option('fetp_enable_download');
delete_option('fetp_paypal_settings');
delete_site_option('fetp_paypal_settings');
delete_option('fetp_delete_data');
delete_site_option('fetp_delete_data');
delete_option('fetp_enable_default_theme_download');
delete_site_option('fetp_enable_default_theme_download');
delete_option('fetp_premium');
delete_site_option('fetp_premium');
delete_option('current_theme');
delete_site_option('current_theme');

