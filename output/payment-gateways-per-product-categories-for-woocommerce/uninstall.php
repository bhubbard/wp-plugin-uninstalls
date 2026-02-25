<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_pgpp_enabled');
delete_site_option('alg_wc_pgpp_enabled');
delete_option('alg_wc_pgpp_advanced_add_hook');
delete_site_option('alg_wc_pgpp_advanced_add_hook');
delete_option('alg_wc_pgpp_products_add_variations');
delete_site_option('alg_wc_pgpp_products_add_variations');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_section_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_pgpp_countries_restriction_number');
delete_site_option('alg_wc_pgpp_countries_restriction_number');
delete_option('alg_wc_pgpp_countries_remove_enabled');
delete_site_option('alg_wc_pgpp_countries_remove_enabled');
delete_option('alg_wc_pgpp_countries_combine_condition');
delete_site_option('alg_wc_pgpp_countries_combine_condition');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_pgpp_categories_include_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_pgpp_categories_exclude_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_pgpp_tags_include_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_pgpp_tags_exclude_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_pgpp_advanced_fallback_gateway');
delete_site_option('alg_wc_pgpp_advanced_fallback_gateway');
delete_option('alg_wc_pgpp_advanced_fallback_gateway_enabled');
delete_site_option('alg_wc_pgpp_advanced_fallback_gateway_enabled');
delete_option('alg_wc_pgpp_pay_titles');
delete_site_option('alg_wc_pgpp_pay_titles');
delete_option('alg_wc_pgpp_products_section_enabled');
delete_site_option('alg_wc_pgpp_products_section_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_pgpp_version');
delete_site_option('alg_wc_pgpp_version');

