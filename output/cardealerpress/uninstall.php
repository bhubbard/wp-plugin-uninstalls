<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cdp_admin_options');
delete_site_option('cdp_admin_options');
delete_option('cdp_db_name_update');
delete_site_option('cdp_db_name_update');
delete_option('cdp_theme_options');
delete_site_option('cdp_theme_options');
delete_option('cdp_shortcode_options');
delete_site_option('cdp_shortcode_options');
delete_option('wporg_options');
delete_site_option('wporg_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('cardealerpress_settings');
delete_site_option('cardealerpress_settings');
delete_option('cdp_transfer_options');
delete_site_option('cdp_transfer_options');
delete_option('cardealerpress_extender_settings');
delete_site_option('cardealerpress_extender_settings');
delete_option('cdp_requirements_checked');
delete_site_option('cdp_requirements_checked');
delete_option('has_rewrite_for_plugin_name_new_taxonomies');
delete_site_option('has_rewrite_for_plugin_name_new_taxonomies');

// Delete Transients
delete_transient('cdp_manual_update_handler_processing');
delete_site_transient('cdp_manual_update_handler_processing');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cdp_manual_update_handler_processing_%', '_site_transient_cdp_manual_update_handler_processing_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cdp_company_check_update_handler_processing_%', '_site_transient_cdp_company_check_update_handler_processing_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cdp_company_processing_%', '_site_transient_cdp_company_processing_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cdp_check_for_company_update_%', '_site_transient_cdp_check_for_company_update_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('cdp_custom_import_update');
delete_site_transient('cdp_custom_import_update');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cdp_auto_update_handler_processing_%', '_site_transient_cdp_auto_update_handler_processing_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('dt_geo_data');
delete_site_transient('dt_geo_data');
delete_transient('cdp_dealer_names');
delete_site_transient('cdp_dealer_names');

// Clear Cron Jobs
wp_clear_scheduled_hook('cdp_cron_inventory_update');
wp_clear_scheduled_hook('cdp_cron_log_file_refresh');
wp_clear_scheduled_hook('cdp_cron_company_handler_refresh');

