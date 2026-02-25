<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xa_dp_rules');
delete_site_option('xa_dp_rules');
delete_option('xa_dynamic_pricing_setting');
delete_site_option('xa_dynamic_pricing_setting');
delete_option('elex_dp_allowed_roles_to_show_pricing_table');
delete_site_option('elex_dp_allowed_roles_to_show_pricing_table');
delete_option('dp_coupons_data');
delete_site_option('dp_coupons_data');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('xa_dp_rules_indexing_status');
delete_site_option('xa_dp_rules_indexing_status');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
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
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');

