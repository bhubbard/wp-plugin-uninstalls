<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('intrkt_refresh_call_retry_current_attempt');
delete_site_option('intrkt_refresh_call_retry_current_attempt');
delete_option('intrkt_all_db_tables_created');
delete_site_option('intrkt_all_db_tables_created');
delete_option('intrkt_country_code_selection');
delete_site_option('intrkt_country_code_selection');
delete_option('intrkt_country_code');
delete_site_option('intrkt_country_code');
delete_option('intrkt_integration_status');
delete_site_option('intrkt_integration_status');
delete_option('intrkt_public_api_token_access_token');
delete_site_option('intrkt_public_api_token_access_token');
delete_option('intrkt_public_api_token_expires_in');
delete_site_option('intrkt_public_api_token_expires_in');
delete_option('intrkt_public_api_token_created_at');
delete_site_option('intrkt_public_api_token_created_at');
delete_option('intrkt_public_api_token_refresh_token');
delete_site_option('intrkt_public_api_token_refresh_token');
delete_option('intrkt_public_api_token_org_id');
delete_site_option('intrkt_public_api_token_org_id');
delete_option('intrkt_public_api_expiry_datetime');
delete_site_option('intrkt_public_api_expiry_datetime');
delete_option('intrkt_log_data');
delete_site_option('intrkt_log_data');
delete_option('intrkt_general-cod-confirmation');
delete_site_option('intrkt_general-cod-confirmation');
delete_option('intrkt_update_db_value');
delete_site_option('intrkt_update_db_value');
delete_option('intrkt_gdpr_status');
delete_site_option('intrkt_gdpr_status');
delete_option('intrkt_cron_run_time');
delete_site_option('intrkt_cron_run_time');
delete_option('INTRKT_ca_all_db_tables_created');
delete_site_option('INTRKT_ca_all_db_tables_created');
delete_option('intrkt_global_param');
delete_site_option('intrkt_global_param');
delete_option('intrkt_excludes_orders');
delete_site_option('intrkt_excludes_orders');
delete_option('intrkt_ca_ignore_users');
delete_site_option('intrkt_ca_ignore_users');
delete_option('intrkt_gdpr_message');
delete_site_option('intrkt_gdpr_message');
delete_option('intrkt_abandon_cart_cut_off_api_time');
delete_site_option('intrkt_abandon_cart_cut_off_api_time');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'order_data_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('intrkt_refresh_api');
wp_clear_scheduled_hook('intrkt_refresh_call_retry');
wp_clear_scheduled_hook('intrkt_abandon_update_order_status_action');

