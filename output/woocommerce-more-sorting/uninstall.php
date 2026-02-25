<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_more_sorting_enabled');
delete_site_option('alg_wc_more_sorting_enabled');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_more_sorting_custom_meta_sorting_enabled');
delete_site_option('alg_wc_more_sorting_custom_meta_sorting_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_more_sorting_custom_meta_sorting_enabled_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_more_sorting_custom_meta_sorting_meta_key_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_more_sorting_custom_meta_sorting_param_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_more_sorting_custom_meta_sorting_order_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_more_sorting_custom_meta_sorting_title_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_more_sorting_custom_meta_sorting_type_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_more_sorting_custom_meta_sorting_secondary_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_more_sorting_restore_wc_default_theme');
delete_site_option('alg_wc_more_sorting_restore_wc_default_theme');
delete_option('alg_wc_more_sorting_restore_wc_default_enabled');
delete_site_option('alg_wc_more_sorting_restore_wc_default_enabled');
delete_option('alg_wc_more_sorting_custom_sorting_enabled');
delete_site_option('alg_wc_more_sorting_custom_sorting_enabled');
delete_option('alg_wc_more_sorting_rearrange_enabled');
delete_site_option('alg_wc_more_sorting_rearrange_enabled');
delete_option('woocommerce_default_catalog_orderby');
delete_site_option('woocommerce_default_catalog_orderby');
delete_option('alg_wc_more_sorting_rearrange_sorting');
delete_site_option('alg_wc_more_sorting_rearrange_sorting');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_more_sorting_version');
delete_site_option('alg_wc_more_sorting_version');
delete_option('alg_wc_more_sorting_rearrange');
delete_site_option('alg_wc_more_sorting_rearrange');

