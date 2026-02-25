<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpfp_where_hear_about_us');
delete_site_option('wpfp_where_hear_about_us');
delete_option('wpfp_data_submited_in_sendiblue');
delete_site_option('wpfp_data_submited_in_sendiblue');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('wpfp_version');
delete_site_option('wpfp_version');
delete_option('md_woocommerce_shipping_method_format');
delete_site_option('md_woocommerce_shipping_method_format');
delete_option('woocommerce_recommoded_product_record');
delete_site_option('woocommerce_recommoded_product_record');

// Delete Transients
delete_transient('_welcome_screen_activation_redirect_wpfp');
delete_site_transient('_welcome_screen_activation_redirect_wpfp');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_prd_att_qry%', '_site_transient_prd_att_qry%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

