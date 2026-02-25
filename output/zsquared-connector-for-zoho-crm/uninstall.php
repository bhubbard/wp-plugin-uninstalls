<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zsq_crm_api_key');
delete_site_option('zsq_crm_api_key');
delete_option('zsq_crm_order_prefix');
delete_site_option('zsq_crm_order_prefix');
delete_option('zsq_crm_hook_trigger');
delete_site_option('zsq_crm_hook_trigger');
delete_option('zsq_crm_shipping_item');
delete_site_option('zsq_crm_shipping_item');
delete_option('zsq_crm_slack_channel');
delete_site_option('zsq_crm_slack_channel');
delete_option('zsq_crm_slack_url');
delete_site_option('zsq_crm_slack_url');
delete_option('zsq_crm_daily_sync_price');
delete_site_option('zsq_crm_daily_sync_price');
delete_option('zsq_crm_daily_sync_qty');
delete_site_option('zsq_crm_daily_sync_qty');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'zsq_crm_ex_to_woo_tax_map_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('zsq_crm_daily_sync');

