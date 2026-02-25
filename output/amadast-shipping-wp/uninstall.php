<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'amdsp_auto_fix_backup_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('amdsp_auto_fixed_settings');
delete_site_option('amdsp_auto_fixed_settings');
delete_option('amdsp_auto_fix_type');
delete_site_option('amdsp_auto_fix_type');
delete_option('amdsp_settings');
delete_site_option('amdsp_settings');
delete_option('amdsp_wc_fields');
delete_site_option('amdsp_wc_fields');
delete_option('amdsp_shipping_rules');
delete_site_option('amdsp_shipping_rules');
delete_option('amdsp_auth_token');
delete_site_option('amdsp_auth_token');
delete_option('amdsp_user_data');
delete_site_option('amdsp_user_data');
delete_option('amdsp_token_expires_at');
delete_site_option('amdsp_token_expires_at');
delete_option('amdsp_refresh_token');
delete_site_option('amdsp_refresh_token');
delete_option('amdsp_auth_mobile');
delete_site_option('amdsp_auth_mobile');
delete_option('amdsp_block_other_city_scripts');
delete_site_option('amdsp_block_other_city_scripts');
delete_option('amdsp_version');
delete_site_option('amdsp_version');
delete_option('amdsp_install_cities');
delete_site_option('amdsp_install_cities');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'amdsp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('amdsp_delete_data_on_uninstall');
delete_site_option('amdsp_delete_data_on_uninstall');
delete_option('amd_version');
delete_site_option('amd_version');
delete_option('amdsp_wizard_completed');
delete_site_option('amdsp_wizard_completed');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

// Delete Transients
delete_transient('amdsp_admin_installing');
delete_site_transient('amdsp_admin_installing');
delete_transient('amdsp_shipping_method_check');
delete_site_transient('amdsp_shipping_method_check');
delete_transient('amdsp_provinces');
delete_site_transient('amdsp_provinces');
delete_transient('amdsp_cities');
delete_site_transient('amdsp_cities');
delete_transient('amdsp_admin_updating');
delete_site_transient('amdsp_admin_updating');

