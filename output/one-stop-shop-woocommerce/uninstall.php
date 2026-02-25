<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_eu_tax_helper_last_rate_changeset');
delete_site_option('woocommerce_eu_tax_helper_last_rate_changeset');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'oss_hide_notice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('oss_use_oss_procedure');
delete_site_option('oss_use_oss_procedure');
delete_option('oss_fixed_gross_prices');
delete_site_option('oss_fixed_gross_prices');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tmp_result' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'oss_woocommerce_notification_sent_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('one_stop_shop_woocommerce');
delete_site_option('one_stop_shop_woocommerce');
delete_option('oss_woocommerce_reports_running');
delete_site_option('oss_woocommerce_reports_running');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'oss_woocommerce_observer_report_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('oss_enable_auto_observation');
delete_site_option('oss_enable_auto_observation');
delete_option('oss_woocommerce_reports');
delete_site_option('oss_woocommerce_reports');
delete_option('woocommerce_gzd_version');
delete_site_option('woocommerce_gzd_version');
delete_option('oss_report_date_type');
delete_site_option('oss_report_date_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_result' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('oss_fixed_gross_prices_for_third_countries');
delete_site_option('oss_fixed_gross_prices_for_third_countries');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Delete Transients
delete_transient('oss_reports_counts');
delete_site_transient('oss_reports_counts');

