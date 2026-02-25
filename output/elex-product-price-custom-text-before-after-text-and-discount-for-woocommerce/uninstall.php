<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elex_ppct_check_field');
delete_site_option('elex_ppct_check_field');
delete_option('elex_ppct_select_all_pages_value');
delete_site_option('elex_ppct_select_all_pages_value');
delete_option('elex_ppct_pages');
delete_site_option('elex_ppct_pages');
delete_option('elex_ppct_prefix_field');
delete_site_option('elex_ppct_prefix_field');
delete_option(' elex_ppct_suffix_field');
delete_site_option(' elex_ppct_suffix_field');
delete_option('elex_ppct_discount_type');
delete_site_option('elex_ppct_discount_type');
delete_option('elex_ppct_discount_amount');
delete_site_option('elex_ppct_discount_amount');
delete_option('ppct_general_settings');
delete_site_option('ppct_general_settings');
delete_option('elex_ppct_suffix_field');
delete_site_option('elex_ppct_suffix_field');
delete_option('elex_ppct_migration');
delete_site_option('elex_ppct_migration');
delete_option('elex_ppct_discount_percent');
delete_site_option('elex_ppct_discount_percent');
delete_option('elex_ppct_customization_data');
delete_site_option('elex_ppct_customization_data');
delete_option('elex_ppct_select_all_categories_id');
delete_site_option('elex_ppct_select_all_categories_id');
delete_option('elex_ppct_categories');
delete_site_option('elex_ppct_categories');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_review_never_ask_again' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_review_will_do_it_later' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_troubleshoot_never_ask_again' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

