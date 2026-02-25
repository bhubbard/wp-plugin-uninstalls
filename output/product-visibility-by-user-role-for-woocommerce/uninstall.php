<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_pvbur_user_roles_for_settings');
delete_site_option('alg_wc_pvbur_user_roles_for_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_pvbur_bulk_visible_products_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_pvbur_bulk_invisible_products_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('alg_wc_pvbur_enabled');
delete_site_option('alg_wc_pvbur_enabled');
delete_option('alg_wc_pvbur_visibility');
delete_site_option('alg_wc_pvbur_visibility');
delete_option('alg_wc_pvbur_purchasable');
delete_site_option('alg_wc_pvbur_purchasable');
delete_option('alg_wc_pvbur_add_column_visible_user_roles');
delete_site_option('alg_wc_pvbur_add_column_visible_user_roles');
delete_option('alg_wc_pvbur_add_to_quick_edit');
delete_site_option('alg_wc_pvbur_add_to_quick_edit');
delete_option('alg_wc_pvbur_query');
delete_site_option('alg_wc_pvbur_query');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_pvbur_version');
delete_site_option('alg_wc_pvbur_version');

// Delete Transients
delete_transient('awcpvbur_all_pids');
delete_site_transient('awcpvbur_all_pids');

