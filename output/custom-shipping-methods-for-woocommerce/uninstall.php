<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_custom_shipping_methods_version');
delete_site_option('alg_wc_custom_shipping_methods_version');
delete_option('alg_wc_custom_shipping_methods_plugin_enabled');
delete_site_option('alg_wc_custom_shipping_methods_plugin_enabled');
delete_option('alg_wc_custom_shipping_methods_do_replace_zero_cost');
delete_site_option('alg_wc_custom_shipping_methods_do_replace_zero_cost');
delete_option('alg_wc_custom_shipping_methods_icon_desc_enabled');
delete_site_option('alg_wc_custom_shipping_methods_icon_desc_enabled');
delete_option('alg_wc_custom_shipping_methods_do_trigger_checkout_update');
delete_site_option('alg_wc_custom_shipping_methods_do_trigger_checkout_update');
delete_option('alg_wc_custom_shipping_methods_replace_zero_cost_text');
delete_site_option('alg_wc_custom_shipping_methods_replace_zero_cost_text');
delete_option('alg_wc_custom_shipping_methods_admin_title');
delete_site_option('alg_wc_custom_shipping_methods_admin_title');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

