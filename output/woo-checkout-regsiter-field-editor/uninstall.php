<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jwcfe_wc_fields_block_billing');
delete_site_option('jwcfe_wc_fields_block_billing');
delete_option('jwcfe_wc_fields_block_shipping');
delete_site_option('jwcfe_wc_fields_block_shipping');
delete_option('jwcfe_wc_fields_block_additional');
delete_site_option('jwcfe_wc_fields_block_additional');
delete_option('jwcfe_account_label');
delete_site_option('jwcfe_account_label');
delete_option('jwcfe_account_sync_fields');
delete_site_option('jwcfe_account_sync_fields');
delete_option('jwcfe_wc_fields_account');
delete_site_option('jwcfe_wc_fields_account');
delete_option('jwcfe_wc_fields_billing');
delete_site_option('jwcfe_wc_fields_billing');
delete_option('jwcfe_wc_fields_shipping');
delete_site_option('jwcfe_wc_fields_shipping');
delete_option('jwcfe_wc_fields_additional');
delete_site_option('jwcfe_wc_fields_additional');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'jwcfe_wc_fields_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'jwcfe_wc_fields_block_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('jwcfe_email_label');
delete_site_option('jwcfe_email_label');
delete_option('jwcfe_order_label');
delete_site_option('jwcfe_order_label');
delete_option('jwcfe_activation_redirect');
delete_site_option('jwcfe_activation_redirect');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('pdf');
delete_site_option('pdf');
delete_option('jwcfe_selected_pdfinvoice_fields');
delete_site_option('jwcfe_selected_pdfinvoice_fields');
delete_option('jwcfe_selected_csv_fields');
delete_site_option('jwcfe_selected_csv_fields');

