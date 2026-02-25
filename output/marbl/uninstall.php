<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('marbl_amazon_enabled');
delete_site_option('marbl_amazon_enabled');
delete_option('marbl_ebay_enabled');
delete_site_option('marbl_ebay_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'marbl_amazon_link_associate_id_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('marbl_general_custom_resources_path');
delete_site_option('marbl_general_custom_resources_path');
delete_option('marbl_amazon_show_disclaimer');
delete_site_option('marbl_amazon_show_disclaimer');
delete_option('marbl_amazon_disclaimer_position');
delete_site_option('marbl_amazon_disclaimer_position');
delete_option('marbl_amazon_disclaimer');
delete_site_option('marbl_amazon_disclaimer');
delete_option('marbl_general_link_show_flags');
delete_site_option('marbl_general_link_show_flags');
delete_option('marbl_general_link_open_new_window');
delete_site_option('marbl_general_link_open_new_window');
delete_option('marbl_general_link_link_nofollow');
delete_site_option('marbl_general_link_link_nofollow');
delete_option('marbl_ebay_default_campaign_id');
delete_site_option('marbl_ebay_default_campaign_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('marbl_ebay_show_disclaimer');
delete_site_option('marbl_ebay_show_disclaimer');
delete_option('marbl_ebay_disclaimer');
delete_site_option('marbl_ebay_disclaimer');
delete_option('marbl_general_include_default_css');
delete_site_option('marbl_general_include_default_css');
delete_option('marbl_ebay_disclaimer_position');
delete_site_option('marbl_ebay_disclaimer_position');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'marbl_ebay_region_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'marbl_ebay_link_partner_id_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

